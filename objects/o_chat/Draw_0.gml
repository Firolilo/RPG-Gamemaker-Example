draw_set_color(c_white);
draw_rectangle(camera_x,camera_y,1250,720,0);

repeat(5) draw_sprite(s_screen, 0,camera_x,camera_y);

draw_sprite(s_fondo_texto, 0, camera_x + 265,camera_y + 490);

draw_set_font(font_text);
draw_set_halign(fa_left);

draw_text_ext(camera_x+315,camera_y+530,chat,-1,650)
