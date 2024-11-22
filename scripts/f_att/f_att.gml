// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function f_att(){
	switch(weapon)
	{
		case "axe":
			image_index = 0;
			instance_create_depth(x,y,depth,o_axe);
		break;
		
		case "firebolt":
			image_index = 0;
			instance_create_depth(x,y,depth,o_firebolt);
		break;
	}
}