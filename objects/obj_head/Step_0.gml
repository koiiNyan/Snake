x = mouse_x;
y = mouse_y;

if segments > 0
{
	direction = point_direction(segment[1].x, segment[1].y, segment[0].x, segment[0].y);
	image_angle = direction;
}

var w = sprite_get_width(spr_apple);

if !instance_exists(obj_apple) && instance_exists(obj_head) && !instance_exists(obj_dog)
{
	var random_number = random(100);
    var random_object;
    
    if (random_number < 75) {  // 75% chance for apple
        random_object = obj_apple;
    } else {  // 25% chance for dog
        random_object = obj_dog;
	}
	instance_create_layer(irandom_range(w/2, view_wport-w/2), irandom_range(w/2, view_hport-w/2), layer, random_object);
}

screen_adjust();