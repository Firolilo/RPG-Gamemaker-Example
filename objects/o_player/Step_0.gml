if(move){

	// --- Input --- //
	
	f_player_inputs();

	// --- Speed --- //
	
	if(dir_mov != -1)
	{
		if(speed_mov < speed_max)
		{
			speed_mov += accel;	
			speed_mov_d = ceil(speed_mov * 0.75);
		}
	}
	else
	{
		speed_mov = 0;	
		speed_mov_d = 0;
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
	case 45:
		move_contact_solid(0, speed_mov_d);
		move_contact_solid(90, speed_mov_d);
	break;
	case 135:
		move_contact_solid(90, speed_mov_d);
		move_contact_solid(180, speed_mov_d);
	break;
	case 225:
		move_contact_solid(180, speed_mov_d);
		move_contact_solid(270, speed_mov_d);
	break;
	case 315:
		move_contact_solid(270, speed_mov_d);
		move_contact_solid(0, speed_mov_d);
	break;
}
	
// --- Reset --- //
	
dir_mov = -1;

// --- Orientacion --- //
switch(ori)
{
	case 0:
		if(speed_mov == 0)
		{
			sprite_index = s_stand_right;
		}
		else
		{
			sprite_index = s_walk_right;	
		}
		image_xscale = 1;
		
		o_inter_mask.x = x + 50;
		o_inter_mask.y = y;
		o_inter_mask.image_angle = 0;
		
	break;
	case 90:
		if(speed_mov == 0)
		{
			sprite_index = s_stand_up;
		}
		else
		{
			sprite_index = s_walk_up;	
		}
		image_xscale = 1;
		
		o_inter_mask.x = x;
		o_inter_mask.y = y - 50;
		o_inter_mask.image_angle = 90;
		
	break;
	case 180:
		if(speed_mov == 0)
		{
			sprite_index = s_stand_right;
		}
		else
		{
			sprite_index = s_walk_right;	
		}
		image_xscale = -1;
		
		o_inter_mask.x = x - 50;
		o_inter_mask.y = y;
		o_inter_mask.image_angle = 0;
		
	break;
	case 270:
		if(speed_mov == 0)
		{
			sprite_index = s_stand_down;
		}
		else
		{
			sprite_index = s_walk_down;	
		}
		image_xscale = 1;
		
		o_inter_mask.x = x;
		o_inter_mask.y = y + 50;
		o_inter_mask.image_angle = 90;
	break;
}


mask_index = s_player_mask;
