import os
import webbrowser

import cairosvg

from mako.lookup import TemplateLookup
from mako.template import Template



template_dir = './templates'

lookup = TemplateLookup(directories=[template_dir])
template = lookup.get_template('derived.mako')
# template = Template(filename='derived.mako', lookup=lookup) # for some reason this doesn't work in Azure Functions

rendered = template.render()

svg_file = './out.svg'
png_file = './out.png'

with open(svg_file, 'w') as file:
    file.write(rendered)

cairosvg.svg2png(url=svg_file, write_to=png_file)

webbrowser.open('file://' + os.path.realpath(png_file))
