function exe_move_heate_map_to_map(_map1,_map2,_mode)
{

	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _map1_heat = _map1[_x1][_y1][$ "climate"][0];
					var _map1_base_name = _map1[_x1][_y1][$ "base_name"];
					
					var _map2_base_name = _map2[_x1][_y1][$ "base_name"];
					var _map2_heat = _map2[_x1][_y1][$ "climate"][0];
					
					var _climate_lerp = 0;
					switch(_mode)
						{
							case "underground_to_ground":
								switch (_map2_base_name)
									{
										case "solid_rocks":		_climate_lerp += 0.2;	break;
										case "soft_rocks":		_climate_lerp += 0.3;	break;
										case "soft_earth":		_climate_lerp += 0.4;	break;
										case "water_caves":		_climate_lerp += 0.5;	break;
									}
								switch (_map1_base_name)
									{
										case "peaks":				_climate_lerp += 0.1;	break;
										case "highland":			_climate_lerp += 0.2;	break;
										case "lowland":				_climate_lerp += 0.3;	break;
										case "shallow_water":		_climate_lerp += 0.5;	break;
										case "deep_water":			_climate_lerp += 0.5;	break;
										case "ocean_rifts":			_climate_lerp += 0.5;	break;
									}
								break;
							case "underdark_to_underground":
								switch (_map1_base_name)
									{
										case "magma":			_climate_lerp += 0.5;	break;
										case "obsidian":		_climate_lerp += 0.2;	break;
										case "granite":			_climate_lerp += 0.1;	break;
										case "olivine":			_climate_lerp += 0.2;	break;
										case "organogenic":		_climate_lerp += 0.4;	break;
										case "metamorphic":		_climate_lerp += 0.3;	break;
										case "chemic":			_climate_lerp += 0.2;	break;
									}
								switch (_map2_base_name)
									{
										case "solid_rocks":		_climate_lerp += 0.3;	break;
										case "soft_rocks":		_climate_lerp += 0.2;	break;
										case "soft_earth":		_climate_lerp += 0.1;	break;
										case "water_caves":		_climate_lerp += 0.;	break;
									}
								break;
						}
					var _lerp_result = lerp(_map2_heat,_map1_heat,_climate_lerp);
					if _lerp_result < 0	{_lerp_result=0.};
					if _lerp_result > 1	{_lerp_result=1.};
					_map2[_x1][_y1][$ "climate"][0] = _lerp_result;
				}
		}

	return(_map2);
}