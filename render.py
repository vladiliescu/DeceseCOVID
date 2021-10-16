import os
import webbrowser
import math

import cairosvg

from mako.lookup import TemplateLookup
from datetime import datetime


def svg_settings():
    """
    Should have been calculated directly in the view, but for the life of me I couldn't get pass the calculated values
    between base & derived. Some convoluted info is here:
    https://mako-discuss.narkive.com/DITZe7SV/how-can-i-pass-variable-from-child-to-the-parent-template
    but it doesn't work when using template arguments for the calculations
    :return:
    """
    max_width = 1024

    sprite_height = 60
    sprite_width = 25

    sprite_distance_x = 5
    sprite_distance_y = 5

    x_start = 25
    y_start = 220

    y_bottom_padding = 120
    x_right_padding = 20

    sprites_per_row = math.floor((max_width - x_start - x_right_padding) / (sprite_width + sprite_distance_x))
    sprite_rows = math.ceil((unvaccinated + vaccinated) / sprites_per_row)

    row_height = sprite_height + sprite_distance_y
    max_height = y_start + sprite_rows * row_height + y_bottom_padding

    return {
        'max_width': max_width, 'max_height': max_height,
        'sprite_height': sprite_height, 'sprite_width': sprite_width,
        'sprite_distance_x': sprite_distance_x,  'sprite_distance_y': sprite_distance_y,
        'x_start': x_start, 'y_start': y_start,
        'y_bottom_padding': y_bottom_padding,
        'x_right_padding': x_right_padding,
        'sprites_per_row': sprites_per_row, 'sprite_rows': sprite_rows,
        'row_height': row_height
    }


template_dir = './templates'

lookup = TemplateLookup(directories=[template_dir])
template = lookup.get_template('derived.mako')
# template = Template(filename='derived.mako', lookup=lookup) # for some reason this doesn't work in Azure Functions

unvaccinated = 312
vaccinated = 40
date = datetime.today()

rendered = template.render(unvaccinated=unvaccinated, vaccinated=vaccinated, total_deaths=unvaccinated + vaccinated,
                           date=date, **svg_settings())

svg_file = './out.svg'
png_file = './out.png'

with open(svg_file, 'w') as file:
    file.write(rendered)

cairosvg.svg2png(url=svg_file, write_to=png_file)

webbrowser.open('file://' + os.path.realpath(png_file))
