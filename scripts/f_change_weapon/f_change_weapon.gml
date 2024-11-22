// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function f_change_weapon(argument0){
	switch(argument0)
	{
		case "axe":
			o_player.weapon = "axe";
			o_player.s_att_right = s_axe_right;
			o_player.s_att_down = s_axe_down;
			o_player.s_att_up = s_axe_up;
		break;
		
		case "firebolt":
			o_player.weapon = "firebolt";
			o_player.s_att_right = s_fire_right;
			o_player.s_att_down = s_fire_down;
			o_player.s_att_up = s_fire_up;
		break;
	}
}