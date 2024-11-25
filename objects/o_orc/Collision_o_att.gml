if(!invi and other.dmg != 0)
{
	invi = invi_max;
	hp -= other.dmg;
	
	obj = instance_create_layer(x,y,"GUI",o_float_text);
	obj.value = other.dmg;
	obj.type = "att";
	
	move = 0;
	
	alarm[0] = -1;
	is_hit = 1;
	
	dir_mov = point_direction(other.x, other.y, x,y);
	
	alarm[1] = hit_time;
}