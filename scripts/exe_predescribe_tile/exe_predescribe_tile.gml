function exe_predescribe_tile(_tile,_map_level)
{
	var _txt = "";
	
	switch(_map_level)
		{
			case "ground":
			//temperature
			if		_tile.climate[0]	< control_array.climate[0]	{_txt = "cold";};
			else if _tile.climate[0]	< control_array.climate[1]	{_txt = "temperate";};
			else													{_txt = "hot";};
			array_push(_tile.terrain_description,_txt);
					
			//humidity
			if		_tile.climate[1]	< 0							{_txt = "arid";};
			else if _tile.climate[1]	< 0.2						{_txt = "dry";};
			else if _tile.climate[1]	< 0.65						{_txt = "moderate";};
			else if _tile.climate[1]	< 0.8						{_txt = "humid";};
			else													{_txt = "wet";};
			array_push(_tile.terrain_description,_txt);
					
			if		_tile.climate[1]	> map_generator.set_water_source_at_humidity							
				{_txt = "water_source";	array_push(_tile.terrain_description,_txt);};
					
					
			//humidity
			if		_tile.wind[1]	< 1								{_txt = "still";};
			else if _tile.wind[1]	< 2								{_txt = "breezy";};
			else if _tile.wind[1]	< 3								{_txt = "windy";};
			else if _tile.wind[1]	< 4								{_txt = "gusty";};
			else													{_txt = "blustery";};
			array_push(_tile.terrain_description,_txt);
				break;
				
			case "underground":
			//temperature
			if		_tile.climate[0]	< control_array.climate[0]	{_txt = "cold";};
			else if _tile.climate[0]	< control_array.climate[1]	{_txt = "temperate";};
			else													{_txt = "hot";};
			array_push(_tile.terrain_description,_txt);
					
			//humidity
			if		_tile.climate[1]	< 0							{_txt = "arid";};
			else if _tile.climate[1]	< 0.2						{_txt = "dry";};
			else if _tile.climate[1]	< 0.65						{_txt = "moderate";};
			else if _tile.climate[1]	< 0.8						{_txt = "humid";};
			else													{_txt = "wet";};
			array_push(_tile.terrain_description,_txt);
					
			if		_tile.climate[1]	> map_generator.set_water_source_at_humidity							
				{_txt = "water_source";	array_push(_tile.terrain_description,_txt);};
				break;
				
				
		}
	
	return(_tile);
}