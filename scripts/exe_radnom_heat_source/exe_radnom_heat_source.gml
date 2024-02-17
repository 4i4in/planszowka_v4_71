function exe_radnom_heat_source(_map,_mode)
{
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _tile = _map[_x1][_y1];
					var _climate0 = _map[_x1][_y1][$ "climate"][0];
					switch(_mode)
						{
							case "underground":
							switch (_tile.base_name)
								{
									case "solid_rocks":		_climate0 += random(0.3)-0.1;	break;
									case "soft_rocks":		_climate0 += random(0.2)-0.1;	break;
									case "soft_earth":		_climate0 += random(0.1);		break;
									case "water_caves":		_climate0 += random(0.2)-0.1;	break;
								}
								break;
							case "underdark":
							switch (_tile.base_name)
								{
									case "magma":			_climate0 += random(0.4)-0.2;	break;
									case "obsidian":		_climate0 += random(0.3)-0.2;	break;
									case "granite":			_climate0 += random(0.3)-0.1;	break;
									case "olivine":			_climate0 += random(0.4)-0.2;	break;
									case "organogenic":		_climate0 += random(0.4)-0.2;	break;
									case "metamorphic":		_climate0 += random(0.4)-0.2;	break;
									case "chemic":			_climate0 += random(0.4)-0.1;	break;
								}
								break;
							case "underwater":
							switch (_tile.base_name)
								{
									case "shelf":			_climate0 += random(0.2)-0.1;	break;
									case "open_sea":		_climate0 += random(0.3)-0.2;	break;
								}
								break;
							case "water_deepths":
							switch (_tile.base_name)
								{
									case "abbysal_plain":	_climate0 += random(0.3)-0.1;	break;
									case "open_depths":		_climate0 += random(0.3)-0.2;	break;
								}
								break;
							case "water_abbys":
							switch (_tile.base_name)
								{
									case "abbys_trench":	_climate0 += random(0.4)-0.1;	break;
								}
								break;
						}
					if _climate0 < 0. {_climate0=0.;};
					if _climate0 > 1. {_climate0=1.;};
					_map[_x1][_y1][$ "climate"][0] = _climate0;
				}		
		}
	return(_map);
}