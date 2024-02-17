function exe_spawn_voronoi_list(_base)
{
	var _temporary_naming = variable_clone(map_generator.map_naiming_base);
	var _temp_voronoi_list = [];
	for(var _ii = 0; _ii < map_generator.voronoi_points; _ii++)
		{
			var _vx = irandom(map_generator.map_x-1);
			var _vy = irandom(map_generator.map_y-1);
			if _ii > 15	{var _vcol = make_colour_rgb(_ii,_vx,_vy);}
			else		{var _vcol = make_colour_rgb(_ii*_ii,_vx,_vy);}
			
			var _mdir = irandom(359);
			var	_bias = irandom(128)+64;
			var _step = irandom(map_generator.noise_level)+1;
			
			if _base == 1
				{
					_temporary_naming = exe_choose_random_end_remove(_temporary_naming);
					var _name = variable_clone(_temporary_naming[1]);
					_temporary_naming = _temporary_naming[0];
				}
			else
				{
					var _name = "";
				}
			
			var _push = [_vx,_vy,_vcol,_mdir,_bias,_step,_name];
			array_push(_temp_voronoi_list,_push);
		}
	return(_temp_voronoi_list);
}