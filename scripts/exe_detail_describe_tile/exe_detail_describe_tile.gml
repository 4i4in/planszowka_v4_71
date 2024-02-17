function exe_detail_describe_tile(_tile,_map_level)
{
	switch(_map_level)
		{
			case "ground":		_tile =  exe_detail_describe_tile_ground(_tile);
				break;
				
			case "underground":		_tile =  exe_detail_describe_tile_underground(_tile);
				break;
		}
	
	return(_tile);
}