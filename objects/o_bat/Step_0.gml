event_inherited();

// --- Behaviour --- //

if(!active)
{
	if(distance_to_object(o_player) < range)
	{
		active = 1;
		image_speed = 1;
	}
}
else
{
	dir_mov = point_direction(x,y,o_player.x,o_player.y);
	move_contact_solid(dir_mov,speed_max);
}
