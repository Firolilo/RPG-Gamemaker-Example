if(move){

	// --- Input --- //
	
	if(keyboard_check(vk_right) and !keyboard_check(vk_left))
	{
		dir_mov = 0;
	}
	if(keyboard_check(vk_left) and !keyboard_check(vk_right))
	{
		dir_mov = 180;
	}
	if(keyboard_check(vk_up) and !keyboard_check(vk_down))
	{
		dir_mov = 90;
	}
	if(keyboard_check(vk_down) and !keyboard_check(vk_up))
	{
		dir_mov = 270;
	}
	
	
	// --- Speed --- //
	
	if(dir_mov != -1)
	{
		if(speed_mov < speed_max)
		{
			speed_mov += accel;	
		}
	}
	else
	{
		speed_mov = 0;	
	}

}
	
// --- Desplazamiento --- //
	
switch(dir_mov)
{
	case 0:
	case 90:
	case 180:
	case 270:
		move_contact_solid(dir_mov, speed_mov);
		ori = dir_mov;
	break;
}
	
// --- Reset --- //
	
dir_mov = -1;