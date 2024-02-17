function exe_detail_describe_tile_ground(_tile)
{
	var _cold = 0;	var _temperate = 0;	var _hot = 0;
	var _arid = 0;	var _dry = 0;	var _moderate = 0;	var _humid = 0;	var _wet = 0;
	var _still = 0;	var _breezy = 0;	var _windy = 0;	var _gusty = 0;	var _blustery = 0;
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
									
					case "still":			_still = 1;	break;
					case "breezy":			_breezy = 1;	break;
					case "windy":			_windy = 1;	break;
					case "gusty":			_gusty = 1;	break;
					case "blustery":		_blustery = 1;	break;
									
					case "water_source":		_water_source = 1;	break;
				}
		}
	switch(_tile.base_name)
		{
			case "peaks":
				if _arid > 0	//peaks
					{
						if _hot > 0	&&	(_gusty > 0 || _blustery > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"clear_skies");
								array_push(_tile.terrain_description,"sandstorms");
							};
						if _hot > 0	&&	_still > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"clear_skies");
								array_push(_tile.terrain_description,"stable_temperatures");
								array_push(_tile.terrain_description,"barren_rocks");
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
							};
						if _cold > 0	&&	(_gusty > 0 || _blustery > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								array_push(_tile.terrain_description,"icestorms");
								array_push(_tile.terrain_description,"freezing_winds");
								array_push(_tile.terrain_description,"avalanche");
								array_push(_tile.terrain_description,"eroded_rocks");
								array_push(_tile.terrain_description,"extreeme_climbing");
							};
						if _cold > 0	&&	_still > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								array_push(_tile.terrain_description,"clear_skies");
								array_push(_tile.terrain_description,"quiet");
								array_push(_tile.terrain_description,"natural_ice_habitats");
							};
					}
				if _dry > 0	//peaks
					{
						if _hot > 0	&&	(_still > 0	||	_breezy > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"barren_rocks");
								array_push(_tile.terrain_description,"hot_caves");
							};
						if _hot > 0	&&	(_gusty > 0 || _blustery > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"eroded_rocks");
							};
											
						if _temperate > 0	&&	(_still > 0	||	_breezy > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"barren_rocks");
							}
						if _temperate > 0	&&	(_gusty > 0 || _blustery > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"eroded_rocks");
								array_push(_tile.terrain_description,"tundra");
							}
											
						if _cold > 0	&&	(_still > 0	||	_breezy > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								array_push(_tile.terrain_description,"natural_ice_habitats");
								array_push(_tile.terrain_description,"tundra");
							};
						if _cold > 0	&&	(_gusty > 0 || _blustery > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								array_push(_tile.terrain_description,"freezing_winds");
							};
					};
				if _moderate > 0	//peaks
					{
						if _hot > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"fog");
												
								var _push_me = choose("dry_grass","grass","dry_wood");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"fog");
												
								var _push_me = choose("forest","grass","wood");
								array_push(_tile.terrain_description,string(_push_me));
							};	
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								array_push(_tile.terrain_description,"taiga");
												
								var _push_me = choose("forest","dry_grass","wood");
								array_push(_tile.terrain_description,string(_push_me));
							};	
					};
				if _humid > 0	//peaks
					{
						if _hot > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"jungle");
								array_push(_tile.terrain_description,"fog");
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"rain");
								array_push(_tile.terrain_description,"fog");
												
								var _push_me = choose("forest","wood");
								array_push(_tile.terrain_description,string(_push_me));
							};	
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								if (_still > 0 ||	_breezy > 0)
									{
										array_push(_tile.terrain_description,"deep_snow_cover");
										array_push(_tile.terrain_description,"natural_ice_habitats");
									}
								else
									{
										array_push(_tile.terrain_description,"snowstorms");
									}
							};	
					};
				if _wet > 0	//peaks
					{
						if _hot > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"jungle");
								array_push(_tile.terrain_description,"fog");
								if (_still > 0)
									{
										array_push(_tile.terrain_description,"fog");
									};
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"jungle");
								array_push(_tile.terrain_description,"swmap");
								if (_still > 0)
									{
										array_push(_tile.terrain_description,"fog");
									};
							};	
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								if (_still > 0 ||	_breezy > 0)
									{
										array_push(_tile.terrain_description,"deep_snow_cover");
										array_push(_tile.terrain_description,"natural_ice_habitats");
									};
								if (_gusty > 0 || _blustery > 0)
									{
										array_push(_tile.terrain_description,"snowstorms");
									};
							};	
					};
				break;
			case "highland":
				if _arid > 0	//highland
					{
						array_push(_tile.terrain_description,"barren");
						if _hot > 0	&&	(_gusty > 0 || _blustery > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"eroded_rocks");
							};
						if _hot > 0	&&	_still > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"intense_heat");
								array_push(_tile.terrain_description,"hot_caves");
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
							};
						if _cold > 0	&&	(_gusty > 0 || _blustery > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								array_push(_tile.terrain_description,"freezing_winds");
								array_push(_tile.terrain_description,"fragile_ice_formations");
							};
						if _cold > 0	&&	_still > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								array_push(_tile.terrain_description,"clear_skies");
								array_push(_tile.terrain_description,"natural_ice_habitats");
							};
					}
				if _dry > 0	//highland
					{
						array_push(_tile.terrain_description,"barren");
						if _hot > 0	&&	(_still > 0	||	_breezy > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"eroded_rocks");
							};
						if _hot > 0	&&	(_gusty > 0 || _blustery > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"steppe");
							};
											
						if _temperate > 0	&&	(_still > 0	||	_breezy > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"prairie");
							}
						if _temperate > 0	&&	(_gusty > 0 || _blustery > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"steppe");
							}
											
						if _cold > 0	&&	(_still > 0	||	_breezy > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								array_push(_tile.terrain_description,"taiga");
							};
						if _cold > 0	&&	(_gusty > 0 || _blustery > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								array_push(_tile.terrain_description,"tundra");
							};
					};
				if _moderate > 0	//highland
					{
						if _hot > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"fertile");
												
								var _push_me = choose("forest","wood","grass");
								array_push(_tile.terrain_description,string(_push_me));
							};	
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								array_push(_tile.terrain_description,"taiga");
												
								var _push_me = choose("forest");
								array_push(_tile.terrain_description,string(_push_me));
							};	
					};
				if _humid > 0	//highland
					{
						if _hot > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
												
								array_push(_tile.terrain_description,"jungle");
								array_push(_tile.terrain_description,"swmap");
								if (_still > 0)
									{
										array_push(_tile.terrain_description,"fog");
									};
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
												
								array_push(_tile.terrain_description,"fertile");
								array_push(_tile.terrain_description,"swmap");
								if (_still > 0)
									{
										array_push(_tile.terrain_description,"fog");
									};
							};	
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
												
								if (_still > 0 ||	_breezy > 0)
									{
										array_push(_tile.terrain_description,"deep_snow_cover");
									};
							};	
					};
				if _wet > 0	//highland
					{
						if _hot > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
												
								array_push(_tile.terrain_description,"jungle");
								array_push(_tile.terrain_description,"swmap");
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
												
								array_push(_tile.terrain_description,"jungle");
								array_push(_tile.terrain_description,"swmap");
							};	
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
												
								if (_still > 0 ||	_breezy > 0)
									{
										array_push(_tile.terrain_description,"deep_snow_cover");
									};
								if (_gusty > 0 || _blustery > 0)
									{
										array_push(_tile.terrain_description,"snowstorms");
									};
							};	
					};
				break;
			case "lowland":
				if _arid > 0	//lowland
					{
						array_push(_tile.terrain_description,"desert");
						if _hot > 0	&&	(_gusty > 0 || _blustery > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"sandstorms");
							};
						if _hot > 0	&&	_still > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"intense_heat");
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
							};
						if _cold > 0	&&	(_gusty > 0 || _blustery > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								array_push(_tile.terrain_description,"freezing_winds");
							};
						if _cold > 0	&&	_still > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								array_push(_tile.terrain_description,"clear_skies");
							};
										
					};
				if _dry > 0	//lowland
					{
						if _hot > 0	&&	(_still > 0	||	_breezy > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"savanna");
							};
						if _hot > 0	&&	(_gusty > 0 || _blustery > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"barren");
								array_push(_tile.terrain_description,"steppe");
							};
											
						if _temperate > 0	&&	(_still > 0	||	_breezy > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"prairie");
							}
						if _temperate > 0	&&	(_gusty > 0 || _blustery > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"steppe");
							}
											
						if _cold > 0	&&	(_still > 0	||	_breezy > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								array_push(_tile.terrain_description,"taiga");
							};
						if _cold > 0	&&	(_gusty > 0 || _blustery > 0)
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								array_push(_tile.terrain_description,"tundra");
							};
					};
				if _moderate > 0	//lowland
					{
						if _hot > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"fertile");
												
								var _push_me = choose("dry_wood","dry_grass","grass");
								array_push(_tile.terrain_description,string(_push_me));
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"fertile");
												
								var _push_me = choose("wood","forest","grass");
								array_push(_tile.terrain_description,string(_push_me));
							};	
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								array_push(_tile.terrain_description,"taiga");
												
								var _push_me = choose("forest","dry_grass");
								array_push(_tile.terrain_description,string(_push_me));
							};	
					};
				if _humid > 0	//lowland
					{
						if _hot > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"jungle");
								array_push(_tile.terrain_description,"swmap");
								if (_still > 0)
									{
										array_push(_tile.terrain_description,"fog");
									};
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"fertile");
								array_push(_tile.terrain_description,"swmap");
								if (_still > 0)
									{
										array_push(_tile.terrain_description,"fog");
									};
							};	
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								array_push(_tile.terrain_description,"taiga");
								array_push(_tile.terrain_description,"swmap");
								if (_still > 0 ||	_breezy > 0)
									{
										array_push(_tile.terrain_description,"deep_snow_cover");
									};
							};	
					};
				if _wet > 0	//lowland
					{
						if _hot > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"jungle");
								array_push(_tile.terrain_description,"swmap");
								if (_still > 0)
									{
										array_push(_tile.terrain_description,"fog");
									};
							};
						if _temperate > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"headwaters")	};
								array_push(_tile.terrain_description,"swmap");
								if (_still > 0)
									{
										array_push(_tile.terrain_description,"fog");
									};
							};	
						if _cold > 0
							{
								if _water_source > 0	{	array_push(_tile.terrain_description,"glacier")	};
								if (_still > 0 ||	_breezy > 0)
									{
										array_push(_tile.terrain_description,"deep_snow_cover");
									};
								if (_gusty > 0 || _blustery > 0)
									{
										array_push(_tile.terrain_description,"snowstorms");
									};
							};	
					};
				break;
			case "shallow_water":
				if _cold > 0	//shallow_water
					{
						if (_still > 0 ||	_breezy > 0)
							{
								array_push(_tile.terrain_description,"frozen_sea_plain");
							}
						if (_gusty > 0 || _blustery > 0)
							{
								array_push(_tile.terrain_description,"broken_ice");
							}
					};
				if _hot > 0	//shallow_water
					{
						if (_still > 0 ||	_breezy > 0)
							{
								array_push(_tile.terrain_description,"fertile");
							}
					};
				break;
			case "deep_water":
				if _cold > 0	//deep_water
					{
						if (_still > 0 ||	_breezy > 0)
							{
								array_push(_tile.terrain_description,"frozen_sea_plain");
								if (_humid > 0 ||	_wet > 0)
									{
										array_push(_tile.terrain_description,"deep_snow_cover");
									}
							}
						if (_gusty > 0 || _blustery > 0)
							{
								array_push(_tile.terrain_description,"broken_ice");
								if (_humid > 0 ||	_wet > 0)
									{
										array_push(_tile.terrain_description,"snowstorms");
									}
								else
									{
										array_push(_tile.terrain_description,"icestorms");
									}
							}
										
					}
				else
					{
						if (_still > 0 ||	_breezy > 0)
							{
								array_push(_tile.terrain_description,"fog");
							}
						else
							{
								array_push(_tile.terrain_description,"strong_wind");
								if (_humid > 0 ||	_wet > 0)
									{
										array_push(_tile.terrain_description,"storms");
									}
							}
										
					};
				if _hot > 0	//deep_water
					{
						array_push(_tile.terrain_description,"plankton");
					};
				break;
			case "ocean_rifts":
				if (_gusty > 0 || _blustery > 0)	//ocean_rifts
					{
						array_push(_tile.terrain_description,"strong_wind");
						if (_humid > 0 ||	_wet > 0)
							{
								array_push(_tile.terrain_description,"storms");
							}
					}
				else
					{
						if _cold > 0
							{
								array_push(_tile.terrain_description,"frozen_sea_plain");
							}
					}
				break;
		}
		
	return(_tile);
}