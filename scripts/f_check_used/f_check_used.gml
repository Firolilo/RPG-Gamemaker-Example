// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function f_check_used(){
	if(ds_list_find_index(global.list_used,id) != -1)
	{
		event_perform(ev_other, ev_user1);	
	}
}