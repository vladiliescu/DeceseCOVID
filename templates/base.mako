<?xml version="1.0" encoding="utf-8"?>

<%
    y_legend = max_height - y_bottom_padding + 20

    unvaccinated_fill = '#9A2A48'
    vaccinated_fill = '#527B9A'
%>

<svg x="0px" y="0px"
     width="${max_width}px" height="${max_height}px" viewBox="0 0 ${max_width} ${max_height}"
     xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
     xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd">

    <rect width="100%" height="100%" fill="white"/>

    <g>
        <text
                x="${x_start}"
                y="56"
                id="text7303">
            <tspan style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:26px;font-family:Lato;-inkscape-font-specification:Lato;fill:${unvaccinated_fill};fill-opacity:1;stroke-width:0.75"
                    >DECESE COVID-19 ÎN ROMÂNIA</tspan></text>
        <text
                xml:space="preserve"
                style="font-style:normal;font-weight:normal;font-size:16px;line-height:1.25;font-family:sans-serif;fill:${unvaccinated_fill};fill-opacity:1;stroke:none;stroke-width:0.75"
                x="${(max_width - 158)}"
                y="56"
                id="text7303-0">
            <tspan
                    sodipodi:role="line"
                    id="tspan7301-1"
                    style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:16px;font-family:Lato;-inkscape-font-specification:Lato;fill:${vaccinated_fill};fill-opacity:1;stroke-width:0.75">${date.strftime('%d.%m.%Y')}</tspan></text>
        <path
                style="stroke:#b3b3b3;stroke-width:1pt;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
                d="M ${x_start},66 ${(max_width - x_right_padding)},66"
                id="upper_separator"/>

        <g id="3561">
            <defs>
                <path id="3562"
                      d="M75.7445,131.915 C75.9395,130.744,76.2104,129.594,76.5558,128.481 C67.1124,134.604,59.3938,127.928,60.0178,128.393 C60.0922,128.445,60.166,128.498,60.2413,128.548 C61.5871,134.744,65.1393,137.593,68.5092,137.644 C71.2252,137.685,74.1391,136.003,75.7445,131.915 z M83.0045,118.647 C85.6014,116.621,88.8357,115.405,92.6686,115.405 C103.666,115.405,109.729,125.414,109.952,135.852 C110.054,140.612,109.569,147.517,111.523,152.058 C111.884,152.896,112.462,153.212,110.891,153.212 C110.891,153.212,103.185,153.212,103.185,153.212 C110.164,157.308,114.448,163.399,114.448,172.847 C114.448,173.48,114.458,173.211,114.448,173.828 C114.375,178.443,110.729,177.912,109.154,177.916 C102.351,177.933,83.2442,177.971,75.3392,177.971 C72.5235,177.971,70.7451,177.343,70.6723,174.159 C70.6582,173.542,70.6084,173.849,70.6084,173.215 C70.6084,169.63,71.5006,163.501,76.8158,157.332 C67.0907,157.322,51.8199,157.316,51.5836,157.335 C49.8887,157.473,46.487,156.319,46.4151,153.212 C46.4011,152.61,46.4147,150.793,46.4147,150.175 C46.4147,140.32,52.2012,131.97,59.8921,128.306 C59.9117,128.32,59.9314,128.333,59.9511,128.346 C55.6518,125.313,52.7956,118.523,52.7956,112.532 C52.7956,103.16,59.7846,95.516,68.3536,95.516 C76.9222,95.516,83.9112,103.16,83.9112,112.532 C83.9112,114.537,83.5913,116.633,83.0045,118.647 z M100.049,151.407 C100.049,151.407,97.363,153.024,93.3193,153.024 C89.2756,153.024,85.6038,151.407,85.6038,151.407 C85.6038,151.407,84.1872,152.418,83.2378,153.139 C83.2378,159.425,90.3838,159.555,93.1646,159.559 C95.8216,159.562,102.603,159.464,102.603,153.139 C102.285,152.736,100.117,151.368,100.049,151.407 z M86.2412,149.897 C86.5163,150.028,86.7892,150.168,87.067,150.291 C87.6258,150.539,88.2161,150.746,88.8006,150.901 C91.5985,151.645,94.5764,151.566,97.3407,150.673 C98.0076,150.457,98.6557,150.2,99.2971,149.902 C99.5426,149.788,99.7809,149.661,100.02,149.532 C100.136,149.469,100.262,149.414,100.373,149.34 C100.986,148.925,101.554,148.416,102.093,147.89 C103.277,146.734,104.294,145.377,105.085,143.85 C105.431,143.184,105.721,142.492,105.983,141.78 C106.567,140.192,106.881,138.49,106.979,136.778 C107.005,136.323,107.012,135.865,106.995,135.409 C106.991,135.291,106.987,135.172,106.982,135.054 C106.98,135.001,106.988,134.934,106.975,134.883 C106.971,134.866,106.94,134.863,106.927,134.86 C106.878,134.845,104.681,134.269,103.135,133.284 C102.154,132.658,100.364,130.992,99.6971,129.566 C97.3797,131.138,93.1901,133.624,87.3506,134.463 C85.5841,134.717,79.7821,134.783,78.7997,134.72 C78.7449,135.439,78.7525,136.169,78.7936,136.888 C79.0272,140.972,80.706,144.864,83.3885,147.616 C83.9298,148.171,84.5027,148.668,85.1087,149.13 C85.3594,149.321,85.6172,149.496,85.8796,149.665 C85.9986,149.742,86.1167,149.832,86.2412,149.897 z M82.3281,112.331 C79.4385,112.204,77.8765,112.069,77.8765,112.069 C77.8765,112.069,78.0736,109.06,76.2937,106.709 C76.327,107.644,76.3327,110.565,75.9033,112.069 C70.3999,112.069,63.4196,113.085,59.1557,106.709 C57.9581,108.894,56.2282,110.954,54.3772,112.441 C54.3769,112.472,54.3761,112.502,54.3761,112.533 C54.3761,120.953,60.655,129.325,68.3536,129.325 C76.0518,129.325,82.3307,120.953,82.3307,112.533 C82.3307,112.465,82.329,112.398,82.3281,112.331 z"/>
            </defs>
            <use xlink:href="#3562" style="fill:${unvaccinated_fill};fill-opacity:1;fill-rule:evenodd;opacity:1;stroke:none;"/>
        </g>


        <text
                xml:space="preserve"
                x="${(x_start + 110)}"
                y="142"
                id="text2626"><tspan
         style="font-style:normal;font-variant:normal;font-weight:bold;font-stretch:normal;font-size:64px;font-family:Lato;-inkscape-font-specification:'Lato Bold';fill:${unvaccinated_fill};fill-opacity:1.0">${total_deaths}</tspan></text>
        <text
                xml:space="preserve"
                x="${(x_start + 230)}"
                y="142"
                id="text4828"><tspan
         sodipodi:role="line"
         style="font-style:normal;font-variant:normal;font-weight:500;font-stretch:normal;font-size:44px;font-family:Lato;-inkscape-font-specification:'Lato Medium';fill:${vaccinated_fill};fill-opacity:1.0">decese, din care ${previous_deaths} anterioare</tspan></text>

        <text
                xml:space="preserve"
                style="font-style:normal;font-weight:normal;font-size:24px;line-height:1.25;font-family:Lato;fill:${unvaccinated_fill};fill-opacity:1.0;stroke:none;-inkscape-font-specification:Lato;font-stretch:normal;font-variant:normal"
                x="${(x_start + 115)}"
                y="178"
                id="text7132"><tspan>${unvaccinated} persoane nevaccinate</tspan></text>
        <text
                xml:space="preserve"
                style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:21.3333px;line-height:1.25;font-family:Lato;-inkscape-font-specification:Lato;fill:${vaccinated_fill};fill-opacity:1.0;stroke:none"
                x="${(x_start + 412)}"
                y="178"
                id="text7132-4"><tspan>${vaccinated} persoane vaccinate</tspan></text>
        <circle
                style="fill:${vaccinated_fill};fill-opacity:1;stroke:none;stroke-width:0.547103"
                cx="${(x_start + 402)}"
                cy="170"
                r="4.6"/>





        ${self.body()}


        <path
                style="stroke:#b3b3b3;stroke-width:1pt;stroke-linecap:butt;stroke-linejoin:miter;stroke-opacity:1"
                d="M ${x_start},${y_legend} ${(max_width - x_right_padding)},${y_legend}"
                id="lower_separator"/>
        <text
                style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:21.3333px;line-height:1.25;font-family:Lato;-inkscape-font-specification:Lato;fill:${unvaccinated_fill};fill-opacity:1;stroke:none"
                x="${(x_start)}"
                y="${(y_legend + 30)}"
                id="text7132-2">
            <tspan>nevaccinată</tspan>
        </text>
        <circle
                style="fill:${vaccinated_fill};fill-opacity:1;stroke:none;stroke-width:0.547103"
                cx="${(x_start + 121)}"
                cy="${(y_legend + 24)}"
                r="4"/>
        <text
                style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:21.3333px;line-height:1.25;font-family:Lato;-inkscape-font-specification:Lato;fill:${vaccinated_fill};fill-opacity:1;stroke:none"
                x="${(x_start + 130)}"
                y="${(y_legend + 30)}"
                id="text7132-4-4">
            <tspan>vaccinată</tspan>
        </text>
        <text
                xml:space="preserve"
                style="font-style:normal;font-variant:normal;font-weight:normal;font-stretch:normal;font-size:21.3333px;line-height:1.25;font-family:Lato;-inkscape-font-specification:Lato;fill:${vaccinated_fill};fill-opacity:1;stroke:none"
                x="${(max_width - x_right_padding - 326)}px"
                y="${(y_legend + 30)}px"
        >
            <tspan style="fill:${vaccinated_fill}">twitter.com/<tspan
                style="fill:${unvaccinated_fill};fill-opacity:1"
                id="tspan21177">DeceseCOVID</tspan></tspan>
        </text>

    </g>
</svg>