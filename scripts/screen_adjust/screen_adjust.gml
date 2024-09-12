function screen_adjust(){
	var ww = browser_width;
	var wh = browser_height;
	
	if camera_get_view_width(view_camera[0]) != ww or camera_get_view_height(view_camera[0]) != wh 
	{
		view_wport[0] = max(ww, 100);
		view_hport[0] = max(wh, 100);
		window_set_size(ww, wh);
		camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);
		surface_resize(application_surface, view_wport[0], view_hport[0]);
	}
}