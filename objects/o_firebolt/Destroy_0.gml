xcoso = x;
ycoso = y;
switch(o_player.ori)
{
	case 0:
		xcoso += 48;
	break;
	case 90:
		ycoso -= 48;
	break;
	case 180:
		xcoso -= 48;
	break;
	case 270:
		ycoso += 48;
	break;
}
instance_create_depth(xcoso,ycoso,depth,o_explosion);