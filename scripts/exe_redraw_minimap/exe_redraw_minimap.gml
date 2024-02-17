function exe_redraw_minimap()
{
	if game_time mod 73 == 0	&&	
		!(control_array.current_menu == "main_menu"	||	control_array.current_menu	== "generate_map_menu")
		{
			switch(control_array.map_current_name_level)
				{
					case "air":	exe_regenerate_minimap_air();
						break;
								
					case "ground":	exe_regenerate_minimap_ground();
						break;
								
					case "underground":	exe_regenerate_minimap_underground();
						break;
								
					case "underdark":	exe_regenerate_minimap_underdark();
						break;
								
					case "underwater":	exe_regenerate_minimap_underwater();
						break;
								
					case "water_deepths":	exe_regenerate_minimap_water_deepths();
						break;
								
					case "water_abbys":	exe_regenerate_minimap_water_abbys();
						break;
								
					case "fairyland":	exe_regenerate_minimap_fairyland();
						break;
				};
			force_minimap_redraw = variable_clone(control_array.map_current_name_level);
		}
	
	if force_minimap_redraw != ""
		{
			switch(force_minimap_redraw)
				{
					case "air":		exe_draw_minimap_air();
						break;
								
					case "ground":	exe_draw_minimap_ground();
						break;
								
					case "underground":	exe_draw_minimap_underground();
						break;
								
					case "underdark":	exe_draw_minimap_underdark();
						break;
								
					case "underwater":	exe_draw_minimap_underwater();
						break;
								
					case "water_deepths":	exe_draw_minimap_water_deepths();
						break;
								
					case "water_abbys":	exe_draw_minimap_water_abbys();
						break;
								
					case "fairyland":	exe_draw_minimap_fairyland();
						break;
				};
			force_minimap_redraw = "";
		}
}