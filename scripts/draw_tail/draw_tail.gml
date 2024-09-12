function draw_tail(obj=obj_segment, xp=0,yp=0,col=c_white,alp=1)
{
	var d,w,h,xx,yy,tex;
	
	var spr=object_get_sprite(obj)
	w=sprite_get_bbox_right(spr)-sprite_get_bbox_left(spr)+1;
	h=sprite_get_bbox_bottom(spr)-sprite_get_bbox_top(spr)+2;
	tex=sprite_get_texture(spr,0);
	
	gpu_set_tex_repeat(false);
    draw_primitive_begin_texture(pr_trianglestrip,tex);
	for (var i = 0; i < segments; i += 1)
	{
		xx= segment[i+1].x-segment[i].x;
		yy = segment[i+1].y-segment[i].y;
		d = sqrt(xx*xx+yy*yy);
		
		if d > 0.01 
		{
			xx *= h/2/d;
			yy *= h/2/d;
			var dis = point_distance(segment[i].x,segment[i].y, segment[i+1].x, segment[i+1].y);
			draw_vertex_texture_color(xp+segment[i].x-yy-0.5, yp+segment[i].y+xx-0.5, 0, 1, col, alp); 
			draw_vertex_texture_color(xp+segment[i].x+yy-0.5, yp+segment[i].y-xx-0.5, 0, 0, col, alp);
			draw_vertex_texture_color(xp+segment[i+1].x-yy-0.5, yp+segment[i+1].y+xx-0.5, dis/w, 1, col, alp); 
			draw_vertex_texture_color(xp+segment[i+1].x+yy-0.5, yp+segment[i+1].y-xx-0.5, dis/w, 0, col, alp);
		}
	}
	draw_primitive_end()
}