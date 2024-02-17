function exe_move_cam_by_minimap_click(_carry)
{
	var _move_map_x =  floor((_carry[0] - mouse_struct.mx) / map_generator.show_scale);
	var _move_map_y =  floor((_carry[1] - mouse_struct.my) / map_generator.show_scale);
	
	control_array.camx -= _move_map_x * control_array.tile_size;
	control_array.camy -= _move_map_y * control_array.tile_size;
	
	if control_array.camx < 0	{	control_array.camx += control_array.map_x * control_array.tile_size;};
	if control_array.camy < 0	{	control_array.camy += control_array.map_y * control_array.tile_size;};
			
	if control_array.camx > control_array.map_x * control_array.tile_size	{	control_array.camx -= control_array.map_x * control_array.tile_size;};
	if control_array.camy > control_array.map_y * control_array.tile_size	{	control_array.camy -= control_array.map_y * control_array.tile_size;};
	
	force_minimap_redraw = variable_clone(control_array.map_current_name_level);
	force_main_map_redraw = 1;
	reset_current_menu_array = 1;
	exe_speed_up_cooldown([3]);
}