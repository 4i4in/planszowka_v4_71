function exe_move_cold_climate(_map,_this_x,_this_y,_dir,_cpart)
{
	switch(_dir)
		{
			case 0: var _nx = 1; var _ny = 0; break;
			case 1: var _nx = 1; var _ny = -1; break;
			case 2: var _nx = 0; var _ny = -1; break;
			case 3: var _nx = -1; var _ny = -1; break;
			case 4: var _nx = -1; var _ny = 0; break;
			case 5: var _nx = -1; var _ny = 1; break;
			case 6: var _nx = 0; var _ny = 1; break;
			case 7: var _nx = 1; var _ny = 1; break;
		}
	var _new_x = _this_x + _nx;	var _new_y = _this_y + _ny;
	if _new_x < 0						{_new_x += map_generator.map_x;};
	if _new_x > map_generator.map_x-1	{_new_x -= map_generator.map_x;};
	if _new_y < 0						{_new_y += map_generator.map_y;};
	if _new_y > map_generator.map_y-1	{_new_y -= map_generator.map_y;};
	
	var _nxy_climate = _map[_new_x][_new_y][$ "climate"][0];
	_nxy_climate -= _cpart;
	if _nxy_climate < 0
		{
			_map[_new_x][_new_y][$ "climate"][0] = 0;
			switch(_map[_new_x][_new_y][$ "base_name"])
				{
					case "peaks":
						_map[_new_x][_new_y][$ "climate"][1] += abs(_nxy_climate);
						break;
					case "highland":
						_map[_new_x][_new_y][$ "climate"][1] += abs(_nxy_climate*0.7);
						exe_move_cold_climate(_map,_new_x,_new_y,_dir,abs(_nxy_climate*0.3));
						break;
					case "lowland":
						_map[_new_x][_new_y][$ "climate"][1] += abs(_nxy_climate*0.6);
						exe_move_cold_climate(_map,_new_x,_new_y,_dir,abs(_nxy_climate*0.4));
						break;
					case "shallow_water":
						_map[_new_x][_new_y][$ "climate"][1] += abs(_nxy_climate*0.4);
						exe_move_cold_climate(_map,_new_x,_new_y,_dir,abs(_nxy_climate*0.6));
						break;
					case "deep_water":
						_map[_new_x][_new_y][$ "climate"][1] += abs(_nxy_climate*0.2);
						exe_move_cold_climate(_map,_new_x,_new_y,_dir,abs(_nxy_climate*0.8));
						break;
					case "ocean_rifts":
						_map[_new_x][_new_y][$ "climate"][1] += abs(_nxy_climate*0.1);
						exe_move_cold_climate(_map,_new_x,_new_y,_dir,abs(_nxy_climate*0.9));
						break;
				}
		}
	else
		{
			_map[_new_x][_new_y][$ "climate"][0] = _nxy_climate;
		}
	
}