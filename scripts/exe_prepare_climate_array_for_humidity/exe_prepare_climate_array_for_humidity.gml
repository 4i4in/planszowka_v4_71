function exe_prepare_climate_array_for_humidity(_map)
{
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _local_struct = _map[_x1][_y1];
					var _climate_array = _local_struct.climate;
					
					for(var _ref_lookup = 0; _ref_lookup < array_length(map_generator.legal_terrains_ground); _ref_lookup++)
						{
							var _name_found = map_generator.legal_terrains_ground[_ref_lookup];
							if _local_struct.base_name == _name_found	{break;};
						}
					var _humidity_base = map_generator.humidity_references_magnitude_multipler[_ref_lookup];
					_humidity_base -= sqrt(abs(_climate_array[0]));
					_humidity_base /= _local_struct.wind[1];
					_climate_array[1] = _humidity_base;
					_climate_array[2] = 0.;
				}
		}
	return(_map)
}