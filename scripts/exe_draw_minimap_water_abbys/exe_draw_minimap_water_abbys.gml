function exe_draw_minimap_water_abbys()
{
	//============================
	var _vx1 = control_array.map_x/2 - control_array.cam_x_range/2;
	var _vy1 = control_array.map_y/2 - control_array.cam_y_range/2;
	var _vx2 = control_array.map_x/2 + control_array.cam_x_range/2;
	var _vy2 = control_array.map_y/2 + control_array.cam_y_range/2;
	
	var _shift_x = _vx1-control_array.map_cam_x_from;
	var _shift_y = _vy1-control_array.map_cam_y_from;
	
	if !surface_exists(water_abbys_minimap_moved)	{water_abbys_minimap_moved = surface_create(control_array.map_x,control_array.map_y);};
	surface_set_target(water_abbys_minimap_moved);
	draw_clear_alpha(0,0);
	draw_surface_tiled(water_abbys_minimap,_shift_x,_shift_y);
	
	draw_set_color(c_white);
	draw_rectangle(_vx1,_vy1,_vx2,_vy2,1);
	draw_set_color(-1);
	
	surface_reset_target();
}