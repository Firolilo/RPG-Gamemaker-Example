if(!invi and other.dmg != 0)
{
	invi = invi_max;
	hp -= other.dmg;
	
	obj = instance_create_layer(x,y,"GUI",o_float_text);
	obj.value = other.dmg;
	obj.type = "dmg";
	
	move = 0;
	att = 0;
	if(instance_exists(o_att_melee)) instance_destroy(o_att_melee);
	
	dir_mov = point_direction(other.x, other.y, x,y);
	speed_mov = 8;
	alarm[0] = 16;
}