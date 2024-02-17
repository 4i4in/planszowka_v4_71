function exe_detail_describe_tile_underground(_tile)
{
	var _cold = 0;	var _temperate = 0;	var _hot = 0;
	var _arid = 0;	var _dry = 0;	var _moderate = 0;	var _humid = 0;	var _wet = 0;
	var _water_source = 0;
	for(var _ii = 0; _ii < array_length(_tile.terrain_description); _ii++)
		{
			switch(_tile.terrain_description[_ii])
				{
					case "cold":			_cold = 1;	break;
					case "temperate":		_temperate = 1;	break;
					case "hot":				_hot = 1;	break;
									
					case "arid":			_arid = 1;	break;
					case "dry":				_dry = 1;	break;
					case "moderate":		_moderate = 1;	break;
					case "humid":			_humid = 1;	break;
					case "wet":				_wet = 1;	break;
									
					case "water_source":		_water_source = 1;	break;
				}
		}
	switch(_tile.base_name)
		{
			case "solid_rocks":
				if _arid > 0	//solid_rocks
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"fog")	};
								array_push(_tile.terrain_description,"barren_rocks");
								array_push(_tile.terrain_description,"intense_heat");
								
								var _push_me = choose("eroded_rocks","hot_caves","chasms","cragscape","ravines","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("barren_rocks");
								array_push(_tile.terrain_description,string(_push_me));
								var _push_me = choose("eroded_rocks","chasms","cragscape","ravines","caverns","faultlines");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								var _push_me = choose("barren_rocks");
								array_push(_tile.terrain_description,string(_push_me));
								var _push_me = choose("eroded_rocks","chasms","cragscape","ravines","caverns","clefts");
								array_push(_tile.terrain_description,string(_push_me));
							};
					}
				if _dry > 0	//solid_rocks
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"barren_rocks");
								
								var _push_me = choose("hot_caves","chasms","cragscape","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("eroded_rocks","barren_rocks");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("chasms","cragscape","ravines","caverns","faultlines");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								var _push_me = choose("eroded_rocks","barren_rocks");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("chasms","cragscape","ravines","caverns","clefts");
								array_push(_tile.terrain_description,string(_push_me));
							};
					};
				if _moderate > 0	//solid_rocks
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("barren_rocks","eroded_rocks");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("hot_caves","chasms","cragscape","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("barren_rocks","eroded_rocks","fertile");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("chasms","cragscape","ravines","caverns","faultlines");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								var _push_me = choose("eroded_rocks","fragile_ice_formations","broken_ice");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("chasms","cragscape","ravines","caverns","clefts");
								array_push(_tile.terrain_description,string(_push_me));
							};
					};
				if _humid > 0	//solid_rocks
					{
						if _hot > 0	
							{
								if _water_source > 0	{	
															var _push_me = choose("headwaters","fog");
															array_push(_tile.terrain_description,string(_push_me));	
														};
								var _push_me = choose("barren_rocks","eroded_rocks","fungal_live");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("hot_caves","chasms","cragscape","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("barren_rocks","fungal_forest","fertile","fungal_forest");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("chasms","cragscape","ravines","caverns","faultlines");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	
															var _push_me = choose("glacier","avalanche","fragile_ice_formations");
															array_push(_tile.terrain_description,string(_push_me));	
														};
								var _push_me = choose("barren_rocks","eroded_rocks","broken_ice","natural_ice_habitats");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("chasms","cragscape","ravines","caverns","clefts");
								array_push(_tile.terrain_description,string(_push_me));
							};
					};
				if _wet > 0	//solid_rocks
					{
						if _hot > 0	
							{
								if _water_source > 0	{	
															var _push_me = choose("headwaters","fog");
															array_push(_tile.terrain_description,string(_push_me));	
														};
								var _push_me = choose("barren_rocks","fertile","fungal_forest",);
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("hot_caves","faultlines","clefts","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("fungal_live","fertile","fungal_forest",);
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("chasms","cragscape","ravines","caverns","faultlines");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								var _push_me = choose("barren_rocks","fragile_ice_formations","natural_ice_habitats",);
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("chasms","cragscape","ravines","caverns","clefts");
								array_push(_tile.terrain_description,string(_push_me));
							};
					};
				break;
			case "soft_rocks":
				if _arid > 0	//soft_rocks
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"fog")	};
								var _push_me = choose("barren_rocks","barren");
								array_push(_tile.terrain_description,string(_push_me));
								
								array_push(_tile.terrain_description,"intense_heat");
								
								var _push_me = choose("eroded_rocks","faultlines","clefts","cragscape","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("hot_caves","barren");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("eroded_rocks","faultlines","clefts","cragscape","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								var _push_me = choose("natural_ice_habitats","broken_ice","barren");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("eroded_rocks","faultlines","chasms","cragscape","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
					}
				if _dry > 0	//soft_rocks
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("intense_heat","barren_rocks","barren");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("eroded_rocks","faultlines","ravines","chasms","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("barren_rocks","barren","fertile");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("eroded_rocks","faultlines","clefts","cragscape","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								var _push_me = choose("natural_ice_habitats","broken_ice","barren");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("eroded_rocks","faultlines","chasms","cragscape","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
					};
				if _moderate > 0	//soft_rocks
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("intense_heat","barren_rocks","barren");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("eroded_rocks","faultlines","ravines","chasms","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("fungal_live","barren","fertile");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("eroded_rocks","faultlines","clefts","cragscape","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								var _push_me = choose("natural_ice_habitats","broken_ice","barren");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("eroded_rocks","faultlines","chasms","cragscape","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
					};
				if _humid > 0	//soft_rocks
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("intense_heat","fungal_forest","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("eroded_rocks","faultlines","cragscape","chasms","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("fungal_live","fungal_forest","fertile","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("eroded_rocks","faultlines","clefts","cragscape","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								var _push_me = choose("natural_ice_habitats","broken_ice","fungal_live");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("eroded_rocks","faultlines","chasms","cragscape","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
					};
				if _wet > 0	//soft_rocks
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("intense_heat","fungal_forest","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("eroded_rocks","faultlines","cragscape","chasms","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("fungal_live","fungal_forest","fertile","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("eroded_rocks","faultlines","clefts","cragscape","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								var _push_me = choose("natural_ice_habitats","broken_ice","fungal_live");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("eroded_rocks","faultlines","chasms","cragscape","caverns");
								array_push(_tile.terrain_description,string(_push_me));
							};
					};
				break;
			case "soft_earth":
				if _arid > 0	//soft_earth
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("intense_heat","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("barren","barren_rocks");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("barren","barren_rocks");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								var _push_me = choose("barren","broken_ice");
								array_push(_tile.terrain_description,string(_push_me));
							};	
					};
				if _dry > 0	//soft_earth
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("intense_heat","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("barren","barren_rocks");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("barren","barren_rocks");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								var _push_me = choose("barren","broken_ice");
								array_push(_tile.terrain_description,string(_push_me));
							};
					};
				if _moderate > 0	//soft_earth
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("intense_heat","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fertile","barren","barren_rocks");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("fertile","barren");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","fungal_forest");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								var _push_me = choose("broken_ice","barren");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live");
								array_push(_tile.terrain_description,string(_push_me));
							};
					};
				if _humid > 0	//soft_earth
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("intense_heat","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fertile","barren","barren_rocks");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","fungal_forest");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								
								var _push_me = choose("fertile","swmap");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","fungal_forest");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								var _push_me = choose("broken_ice","barren");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","natural_ice_habitats");
								array_push(_tile.terrain_description,string(_push_me));
							};
					};
				if _wet > 0	//soft_earth
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								var _push_me = choose("intense_heat","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fertile","barren","barren_rocks");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","fungal_forest");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								
								var _push_me = choose("fertile","swmap");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","fungal_forest");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								var _push_me = choose("broken_ice","barren");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","natural_ice_habitats");
								array_push(_tile.terrain_description,string(_push_me));
							};
					};
				break;
			case "water_caves":
				if _arid > 0	//water_caves
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								
								var _push_me = choose("barren","barren_rocks");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","broken_ice");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								
								var _push_me = choose("barren","eroded_rocks");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								var _push_me = choose("broken_ice","barren");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("natural_ice_habitats");
								array_push(_tile.terrain_description,string(_push_me));
							};	
					};
				if _dry > 0	//water_caves
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								
								var _push_me = choose("barren","barren_rocks");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","broken_ice");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								
								var _push_me = choose("barren","eroded_rocks");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								var _push_me = choose("broken_ice","barren","natural_ice_habitats");
								array_push(_tile.terrain_description,string(_push_me));
							};
					};
				if _moderate > 0	//water_caves
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								
								var _push_me = choose("fertile","barren","barren_rocks","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","fungal_forest");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								
								var _push_me = choose("fertile","barren","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","fungal_forest");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								
								var _push_me = choose("fertile","broken_ice","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","natural_ice_habitats");
								array_push(_tile.terrain_description,string(_push_me));
							};
					};
				if _humid > 0	//water_caves
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								
								var _push_me = choose("fertile","plankton","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","fungal_forest");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								
								var _push_me = choose("fertile","plankton");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","fungal_forest");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								
								var _push_me = choose("fertile","broken_ice","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","natural_ice_habitats");
								array_push(_tile.terrain_description,string(_push_me));
							};
					};
				if _wet > 0	//water_caves
					{
						if _hot > 0	
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								
								var _push_me = choose("fertile","plankton","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","fungal_forest");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								
								var _push_me = choose("fertile","plankton","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","fungal_forest");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								
								var _push_me = choose("fertile","plankton","fog");
								array_push(_tile.terrain_description,string(_push_me));
								
								var _push_me = choose("fungal_live","fungal_forest");
								array_push(_tile.terrain_description,string(_push_me));
							};
					};
				break;
		}
		
	return(_tile);
}