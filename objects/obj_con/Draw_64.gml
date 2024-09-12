draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(font0);


if instance_exists(obj_head)
{
	draw_text(view_wport/2, view_hport/2, string(segments));
}

else
{
	draw_text(view_wport/2, view_hport/3, "GAME OVER");
	draw_set_font(font1);
	draw_text(view_wport/2, view_hport/2, "Click anywhere to restart");
}