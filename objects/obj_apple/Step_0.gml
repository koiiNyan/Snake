image_xscale -= 1/4/room_speed;
image_yscale = image_xscale;

//if image_xscale <= 0 room_restart();

if image_xscale <= 0
{
	with obj_head instance_destroy();
	with obj_segment instance_destroy();
	instance_destroy();
}