function exe_map_generator_show_scale_change(_carry)
{
	
	if control_array.current_menu	==	"generate_map_menu"
		{
			var _maxsize = 512/map_generator.map_x;
			if 512/map_generator.map_y > _maxsize
				{	_maxsize =512/ map_generator.map_y;	};
	
			if _carry[0] == "min"	{	_carry[0] = -_maxsize;	};
			if _carry[0] == "max"	{	_carry[0] = _maxsize;	};
	
			map_generator.show_scale += _carry[0];
	
			map_generator.show_scale = ceil(map_generator.show_scale);
	
			if map_generator.show_scale < 1	{map_generator.show_scale = 1;};
			if map_generator.show_scale > _maxsize	{map_generator.show_scale = _maxsize;};
		}
	else
		{
			//var _minimap_size = (control_array.map_x/64)	* map_generator.show_scale;
			var _maxsize = menus.minimap.menu_xsize;
			var _max_scale =	_maxsize / (control_array.map_x/64);
	
			if _carry[0] == "min"	{	_carry[0] = -_max_scale;	};
			if _carry[0] == "max"	{	_carry[0] = _max_scale;	};
	
			map_generator.show_scale += _carry[0];
			map_generator.show_scale = ceil(map_generator.show_scale);
			
			while(	((control_array.map_x/64)	* map_generator.show_scale)>	_maxsize)
				{
					map_generator.show_scale--;
				}
			if map_generator.show_scale < 1	{map_generator.show_scale = 1;};
			
			// adapat menus.minimap
			menus.minimap.menu_ysize = (control_array.map_y/64)	* map_generator.show_scale	+1;
			
			force_minimap_redraw = variable_clone(control_array.map_current_name_level);
		}
	exe_speed_up_cooldown([3]);
	reset_current_menu_array = 1;
}