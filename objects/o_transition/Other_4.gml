if(global.previous_room == target)
{
	o_player.x = x + 48;
	o_player.y = y + 48;
	switch(ori)
	{
		case 0:
			o_player.x += 96
		break;
		case 90:
			o_player.y -= 96
		break;
		case 180:
			o_player.x -= 96
		break;
		case 270:
			o_player.y += 96
		break;
	}
}
