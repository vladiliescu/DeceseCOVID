import os
import webbrowser

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
    max_width = 1280

    sprite_height = 100
    sprite_width = 100

    sprite_distance_x = 25
    sprite_distance_y = 45

    x_start = 10
    y_start = 200

    y_bottom_padding = 200

    sprites_per_row = (max_width - x_start) / (sprite_width + sprite_distance_x)
    sprite_rows = (unvaccinated + vaccinated) / sprites_per_row

    row_height = sprite_height + sprite_distance_y
    max_height = y_start + sprite_rows * row_height + y_bottom_padding

    return {
        max_width,
        sprite_height, sprite_width,
        sprite_distance_x, sprite_distance_y,
        x_start, y_start,
        y_bottom_padding,
        sprites_per_row, sprite_rows,
        row_height, max_height
    }


template_dir = './templates'

lookup = TemplateLookup(directories=[template_dir])
template = lookup.get_template('derived.mako')
# template = Template(filename='derived.mako', lookup=lookup) # for some reason this doesn't work in Azure Functions

total_deaths = 442
unvaccinated = 397
vaccinated = 45
date = datetime(2021, 10, 13)

rendered = template.render(unvaccinated=unvaccinated, vaccinated=vaccinated, date=date, settings=svg_settings())

svg_file = './out.svg'
png_file = './out.png'

with open(svg_file, 'w') as file:
    file.write(rendered)

cairosvg.svg2png(url=svg_file, write_to=png_file)

webbrowser.open('file://' + os.path.realpath(png_file))
