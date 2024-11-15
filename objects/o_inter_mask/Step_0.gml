if(active)
{
	if(keyboard_check_pressed(vk_space))
	{
		inter = instance_place(x,y,o_interactive)
		if(inter != noone)
		{
			with(inter)
			{
				event_perform(ev_other, ev_user0)	
			}
			active = 0;
			alarm[0] = cooldown;
		}
	}
}