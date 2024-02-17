function exe_goto_editor()
{
	//exe_render_refresh_tile(_xx1,_yy1,control_array.map_current_name_level,0);
	control_array.map_x = variable_clone(map_generator.map_x);
	control_array.map_y = variable_clone(map_generator.map_y);
	
	var _carry = [0,0,"ground",0];
	exe_throw_background_function("exe_background_map_tile_render",_carry,"background render",100,100);
	control_array.map_drawing_mode = "prerendered_ver1";
	
	control_array.current_menu = "editor_map_menu";
	
	var _carry = ["max"];	exe_map_generator_show_scale_change(_carry);
	exe_regenerate_minimap_ground();
	
	//transfer map from map_generator to control_array
	control_array.map_x = variable_clone(map_generator.map_x);
	control_array.map_y = variable_clone(map_generator.map_y);
	//==================================================
	
	control_array.current_menu_array = [];
	control_array.move_map = 1;
	force_main_map_redraw = 1;
}