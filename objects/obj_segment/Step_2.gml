var dir = point_direction(x, y, parent.x, parent.y);

direction = dir;
image_angle = dir;

x = parent.x - lengthdir_x(DIS, dir);
y = parent.y - lengthdir_y(DIS, dir);