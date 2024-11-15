// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function f_player_inputs(){
	if(keyboard_check(vk_right) and !keyboard_check(vk_left))
	{
		if(keyboard_check(vk_up) and !keyboard_check(vk_down))
		{
			dir_mov = 45;
		}
		else
		{
			if(keyboard_check(vk_down) and !keyboard_check(vk_up))
			{
				dir_mov = 315;
			}
			else
			{
				dir_mov = 0;
			}
		}
	}
	if(keyboard_check(vk_left) and !keyboard_check(vk_right))
	{
		if(keyboard_check(vk_up) and !keyboard_check(vk_down))
		{
			dir_mov = 135;
		}
		else
		{
			if(keyboard_check(vk_down) and !keyboard_check(vk_up))
			{
				dir_mov = 225;
			}
			else
			{
				dir_mov = 180;
			}
		}
	}
	if(keyboard_check(vk_up) and !keyboard_check(vk_down))
	{
		if(keyboard_check(vk_right) and !keyboard_check(vk_left))
		{
			dir_mov = 45;
		}
		else
		{
			if(keyboard_check(vk_left) and !keyboard_check(vk_right))
			{
				dir_mov = 135;
			}
			else
			{
				dir_mov = 90;
			}
		}
	}
 
	if(keyboard_check(vk_down) and !keyboard_check(vk_up))
	{
		if(keyboard_check(vk_right) and !keyboard_check(vk_left))
		{
			dir_mov = 315;
		}
		else
		{
			if(keyboard_check(vk_left) and !keyboard_check(vk_right))
			{
				dir_mov = 225;
			}
			else
			{
				dir_mov = 270;
			}
		}
	}
}