image_xscale -= 1/4/room_speed;
image_yscale = image_xscale;

if image_xscale <= 0
{
	instance_destroy();
}