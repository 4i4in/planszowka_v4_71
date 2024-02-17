function exe_perform_description_ground(_map_level)
{
	switch(_map_level)
		{
			case "ground":
			game_map.ground = exe_describe_ground(game_map.ground,_map_level);
			if map_generator.autogenerate_rivers > 0	{	game_map.ground = exe_autogenerate_rivers(game_map.ground);	};
				break;
				
			case "underground":
			game_map.underground = exe_describe_ground(game_map.underground,_map_level);
				break;
			
		};
}