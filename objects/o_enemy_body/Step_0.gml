
// --- Control --- //

if(invi > 0)
{
	invi-= 1;
	image_blend = c_red;
}
else
{
	image_blend = c_white;
}

if(hp <= 0)
{
	instance_destroy();	
}