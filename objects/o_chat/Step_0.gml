if(keyboard_check_pressed(vk_space))
{
	if(!ds_queue_empty(global.list_chat))
	{
		chat = ds_queue_head(global.list_chat);
		ds_queue_dequeue(global.list_chat);
		
	}
	else
	{
		sprite_delete(s_screen);
		instance_activate_all();
		instance_destroy();
	}
}
