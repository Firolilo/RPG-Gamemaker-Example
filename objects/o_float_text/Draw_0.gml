draw_set_font(font_float);
draw_set_halign(fa_center);
draw_set_color(c_black);
draw_text(x+3,y+3,value);
switch(type)
{
	case "att":
		draw_set_color(c_white);
	break;
	
	case "dmg":
		draw_set_color(c_red);
	break;
	
	case "key":
		draw_set_color(c_yellow);
	break;
	
	case "heal":
		draw_set_color(c_lime);
	break;
}

draw_text(x,y,value);