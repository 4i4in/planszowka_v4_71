function exe_switch_terrain_tile(_tile,_counter)
{
	_tile.base_name = variable_clone(map_generator.legal_terrains_ground[_counter]);
	_tile.base_color = variable_clone(map_generator.legal_terrains_colors[_counter]);
	_tile.zref = variable_clone(map_generator.height_references[_counter]);
	_tile = exe_clean_tile_for_reforming(_tile,_counter);
	return(_tile);
}