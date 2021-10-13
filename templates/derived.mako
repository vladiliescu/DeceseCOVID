<%inherit file="base.mako"  />

<%
    total_deaths = unvaccinated + vaccinated

    unvaccinated_fill = '#b13254'
    vaccinated_fill = '#4a6d88'


    x_current = x_start
    y_current = y_start

    x_step = sprite_distance_x
    y_step = sprite_distance_y

    sprites_in_current_row = 0
%>

%for i in range(0, total_deaths):
   <%
        if i < unvaccinated:
            fill = unvaccinated_fill
        else:
            fill = vaccinated_fill
    %>
    <svg x="${x_current}pt" y="${y_current}pt" width="${sprite_width}pt" height="${sprite_height}pt" fill="${fill}" >
        <path d="M10.7135,31.0631 C10.7135,31.0631,10.704,44.6751,10.704,44.6751 C10.704,44.6751,18.704,44.6777,18.704,44.6777 C18.704,44.6777,18.7611,31.1545,18.7611,31.1545 C21.8594,30.4507,21.7032,29.3933,21.7032,25.0282 C21.7032,25.0282,21.7032,20.0986,21.7032,20.0986 C21.7032,15.0273,20.6676,12.7091,15.738,12.6388 C17.5694,11.3707,18.5553,10.5812,18.5553,8.82129 C18.5553,6.84945,16.8644,4.73587,14.6818,4.73587 C12.4993,4.73587,10.8084,6.84945,10.8084,8.82129 C10.8084,10.5812,11.7943,11.3707,13.6257,12.6388 C8.76632,12.7091,7.70404,15.0273,7.70404,20.0986 C7.70404,20.0986,7.70404,25.0282,7.70404,25.0282 C7.70404,29.4648,7.69329,30.3615,10.7213,31.0652 C10.7213,31.0652,10.7135,31.0631,10.7135,31.0631 z"/>
    </svg>
    <%
        x_current += x_step
        sprites_in_current_row += 1

        if sprites_in_current_row >= sprites_per_row:
            sprites_in_current_row = 0
            x_current = x_start
            y_current += y_step
    %>
%endfor