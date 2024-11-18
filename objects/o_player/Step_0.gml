if(move){

	// --- Input --- //
	
	f_player_inputs();

	if(keyboard_check(vk_control) and weapon != "")
	{
		dir_mov = -1;
		att = 1;
		move = 0;
		
		f_att();
	}
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

f_desplazamiento();
	
// --- Reset --- //
	
dir_mov = -1;

// --- Orientacion --- //
switch(ori)
{
	case 0:
		
		if(speed_mov == 0)
		{
			if(att)
			{
				sprite_index = s_att_right;
			}
			else sprite_index = s_stand_right;
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
			if(att)
			{
				sprite_index = s_att_up;
			}
			else sprite_index = s_stand_up;
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
			if(att)
			{
				sprite_index = s_att_right;
			}
			else sprite_index = s_stand_right;
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
			if(att)
			{
				sprite_index = s_att_down;
			}
			else sprite_index = s_stand_down;
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
