/// @description Check Direction

x_distance = abs(o_player.x - x)
y_distance = abs(o_player.y - y)

if(x_distance >= y_distance)
{
	if(o_player.x >= x)
	{
		dir_mov = 0;
	}	
	else
	{
		dir_mov = 180;
	}
}
else
{
	if(o_player.y >= y)
	{
		dir_mov = 270;
	}	
	else
	{
		dir_mov = 90;	
	}	
}

move = 1;
alarm[1] = move_time;