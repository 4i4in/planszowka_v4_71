function exe_move_humidity_2mpas(_map1,_map2,_mode)
{

	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _map1_heat = _map1[_x1][_y1][$ "climate"][1];
					var _map1_base_name = _map1[_x1][_y1][$ "base_name"];
					
					var _map2_base_name = _map2[_x1][_y1][$ "base_name"];
					
					var _climate_result = 0.;
					switch(_mode)
						{
							case "underground":
								switch (_map1_base_name)
									{
										case "peaks":				_climate_result += _map1_heat/4;	break;
										case "highland":			_climate_result += _map1_heat/2;	break;
										case "lowland":				_climate_result += _map1_heat;	break;
										case "shallow_water":		_climate_result += _map1_heat;	break;
										case "deep_water":			_climate_result += _map1_heat;	break;
										case "ocean_rifts":			_climate_result += _map1_heat;	break;
									}
								switch (_map2_base_name)
									{
										case "solid_rocks":		_climate_result += 0.1;	_climate_result += random(0.1)-0.1;		break;
										case "soft_rocks":		_climate_result += 0.2;	_climate_result += random(0.2)-0.1;		break;
										case "soft_earth":		_climate_result += 0.3;	_climate_result += random(0.3)-0.1;		break;
										case "water_caves":		_climate_result += 0.5;	_climate_result += random(0.4)-0.1;		break;
									}
								break;
							case "underdark":
								switch (_map1_base_name)
									{
										case "solid_rocks":		_climate_result += _map1_heat/4;	break;
										case "soft_rocks":		_climate_result += _map1_heat/3;	break;
										case "soft_earth":		_climate_result += _map1_heat/2;	break;
										case "water_caves":		_climate_result += _map1_heat;		break;
									}
								switch (_map2_base_name)
									{
										case "magma":			_climate_result += -0.4;	_climate_result += random(0.2)-0.1;		break;
										case "obsidian":		_climate_result += -0.2;	_climate_result += random(0.2)-0.1;		break;
										case "granite":			_climate_result += -0.1;	_climate_result += random(0.2)-0.1;		break;
										case "olivine":			_climate_result += 0.2;		_climate_result += random(0.3)-0.1;		break;
										case "organogenic":		_climate_result += 0.5;		_climate_result += random(0.4)-0.1;		break;
										case "metamorphic":		_climate_result += 0.4;		_climate_result += random(0.2)-0.1;		break;
										case "chemic":			_climate_result += -0.2;	_climate_result += random(0.1)-0.1;		break;
									}
								break;
						}
					if _climate_result < 0	{_climate_result=0.};
					if _climate_result > 1	{_climate_result=1.};
					_map2[_x1][_y1][$ "climate"][1] = _climate_result;
				}
		}

	return(_map2);
}