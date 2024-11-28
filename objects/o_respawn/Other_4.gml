if(global.previous_room == global.respawn_room){
	o_player.x=x+48;
	o_player.y=y+48;
	
	ds_list_clear(global.list_used);
}
