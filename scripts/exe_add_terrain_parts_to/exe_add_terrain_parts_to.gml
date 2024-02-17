function exe_add_terrain_parts_to(_map)
{
	for(var _x1 = 0; _x1 < map_generator.map_x; _x1++)
		{
			for(var _y1 = 0; _y1 < map_generator.map_y; _y1++)
				{
					var _local_struct = _map[_x1][_y1];
					_local_struct.terrain_extensions = [];
					var _extensions_array = [];
					for(var _x2 = _x1-1; _x2 < _x1+2; _x2++)
						{
							for(var _y2 = _y1-1; _y2 < _y1+2; _y2++)
								{
									var _check_x = _x2; var _check_y = _y2; 
									if _check_x < 0	{_check_x+=map_generator.map_x;};
									if _check_x > map_generator.map_x-1	{_check_x-=map_generator.map_x;};
									if _check_y < 0	{_check_y+=map_generator.map_y;};
									if _check_y > map_generator.map_y-1	{_check_y-=map_generator.map_y;};
									
									var _check_struct = _map[_check_x][_check_y];
									if _local_struct.zref < _check_struct.zref	+ height_step
										{
											var _rnd = round(tile_base_size/4);
											var _scale = irandom_range(5,15)/10;
											var _cover = irandom_range(1,array_length(tex_struct._extension_cover));
											_cover = variable_clone(tex_struct._extension_cover[_cover-1]);
											var _zrot = irandom(359);
											var _sx = 0;	var _sy = 0;
											switch(sign(_x2-_x1))
												{
													case -1:	_sx = round(-irandom(_rnd)+_rnd/2);
														break;
													case 0:		_sx = round(tile_base_size/2 + irandom(2*_rnd)-_rnd);
														break;
													case 1:		_sx = round(tile_base_size + irandom(_rnd)-_rnd/2);
														break;
												}
											switch(sign(_y2-_y1))
												{
													case -1:	_sy = round(-irandom(_rnd)+_rnd/2);
														break;
													case 0:		_sy = round(tile_base_size/2 + irandom(2*_rnd)-_rnd);
														break;
													case 1:		_sy = round(tile_base_size + irandom(_rnd)-_rnd/2);
														break;
												}
											if _local_struct.zref < _check_struct.zref
												{
													var _push = [_sx,_sy,_scale,_cover,_zrot];
													array_push(_extensions_array,_push);
												}
											else
												{
													//if (sign(_sx) *	sign(_sx) != 0)
													if (sign(_x2-_x1) *	sign(_y2-_y1) != 0)
														{
															var _push = [_sx,_sy,_scale,_cover,_zrot];
															array_push(_extensions_array,_push);
														}
												}
										}
								}
						}
					_local_struct.terrain_extensions = _extensions_array;
				}
		}
	return(_map);
}