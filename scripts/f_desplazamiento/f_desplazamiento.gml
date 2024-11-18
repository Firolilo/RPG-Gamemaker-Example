// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function f_desplazamiento(){
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
}