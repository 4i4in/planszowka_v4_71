function exe_goto_generate_map_menu(_carry)
{
	map_generator.split_array = [];
	control_array.current_menu_array = [];
	control_array.current_menu = "generate_map_menu";
	
	if _carry[0] == "reset_all"	
		{
			game_map = exe_return_map_struct();//reset
			map_generator.height_map = [];
			map_generator.part_map = [];
		}
	if _carry[0] == "reset_part_map"	
		{
			game_map =	exe_return_map_struct();//reset
			map_generator.part_map = [];
		}
	
	//creating new map
	exe_map_generator_show_scale_change([0]);
	
	if array_length(map_generator.height_map) < 1	//model of generating height map with base naming
		{
			switch(map_generator.current_generator_step_0) 
				{
					case "exe_voronoi_map_gen_01":
						exe_map_generator_voronoi_points_change([0]);
						exe_voronoi_map_gen_01();
						break;
				}
		}
	exe_adapt_water_cover_level_to_expected();
	map_generator.water_cover = exe_check_prcnt_under(map_generator.height_map,map_generator.mapheight_mean);
	//technical abstract map end
	
	//transform technical map to tiles
	if array_length(map_generator.part_map) < 1	//model of generating ground map from height map
		{
			switch(map_generator.current_generator_step_1)
				{
					case "exe_hm_to_terrain_voronoi_01":
						exe_hm_to_terrain_voronoi_01(map_generator.height_map); //this stays here
						exe_perform_wind_on_ground(); //this stays here
						exe_perform_climate_on_ground(); //this stays here
						exe_perform_humidity_on_ground(); //this stays here
						break;
				}
		}
		
	if array_length(game_map.ground) > 1	//model of generating underground map base on ground map
		{
			switch(map_generator.current_generator_step_2underground)
				{
					case "exe_ground_to_underground_01":
						exe_ground_to_underground_01();//this out to the end
						//move heat
						game_map.underground = exe_make_climate_to_from_2maps(game_map.ground,game_map.underground,"underground");
						game_map.underground = exe_lerp_climate_on(game_map.underground,1);
						game_map.underground = exe_radnom_heat_source(game_map.underground,"underground");
						//move humidity
						game_map.underground = exe_move_humidity_2mpas(game_map.ground,game_map.underground,"underground");
						break;
				}
		}
		
	if array_length(game_map.underground) > 1	&&	array_length(game_map.ground) > 1	
		{	
			switch(map_generator.current_generator_step_3underdark)
				{
					case "exe_ground_and_underground_to_underdark_01":
						exe_ground_and_underground_to_underdark_01();
						//move heat
						game_map.underdark = exe_make_climate_to_from_2maps(game_map.underground,game_map.underdark,"underdark");
						game_map.underdark = exe_lerp_climate_on(game_map.underdark,3);
						game_map.underdark = exe_radnom_heat_source(game_map.underdark,"underdark");
						//move humidity
						game_map.underdark = exe_move_humidity_2mpas(game_map.underground,game_map.underdark,"underdark");
						break;
				}
		}
		
	if array_length(game_map.ground) > 1
		{	
			switch(map_generator.current_generator_step_4underwater)
				{
					case "exe_ground_to_underwater_01":
						exe_ground_to_underwater_01();
						//exe perform heat sources
						game_map.underwater = exe_make_climate_to_from_2maps(game_map.ground,game_map.underwater,"underwater");
						game_map.underwater = exe_lerp_climate_on(game_map.underwater,3);
						game_map.underwater = exe_radnom_heat_source(game_map.underwater,"underwater");
						//wind here is current
						break;
				}
		}
		
	if array_length(game_map.ground) > 1
		{	
			switch(map_generator.current_generator_step_5water_deepths)
				{
					case "exe_ground_to_water_deepths_01":
						exe_ground_to_water_deepths_01();
						game_map.water_deepths = exe_make_climate_to_from_2maps(game_map.underwater,game_map.water_deepths,"water_deepths");
						game_map.water_deepths = exe_lerp_climate_on(game_map.water_deepths,1);
						game_map.water_deepths = exe_radnom_heat_source(game_map.water_deepths,"water_deepths");
						//wind here is current
						break;
				}
		}
		
	if array_length(game_map.ground) > 1
		{	
			switch(map_generator.current_generator_step_6water_abbys)
				{
					case "exe_ground_to_water_abbys_01":
						exe_ground_to_water_abbys_01();
						game_map.water_abbys = exe_make_climate_to_from_2maps(game_map.water_deepths,game_map.water_abbys,"water_abbys");
						game_map.water_abbys = exe_lerp_climate_on(game_map.water_abbys,1);
						game_map.water_abbys = exe_radnom_heat_source(game_map.water_abbys,"water_abbys");
						break;
				}
		}
	//move heat sources from underdark and underground
	game_map.underground = exe_move_heate_map_to_map(game_map.underdark,game_map.underground,"underdark_to_underground");
	game_map.ground = exe_move_heate_map_to_map(game_map.underground,game_map.ground,"underground_to_ground");
	//move current from water abbys, deepths and underwater
	//move magic and special places
		
	//fill map with data, this is map gen end step
	if array_length(game_map.ground) > 1
		{	
			exe_perform_description_ground("ground");
			game_map.ground = exe_add_terrain_parts_to(game_map.ground);
			game_map.ground = exe_add_terrain_markers_to(game_map.ground,"ground");
		};
	if array_length(game_map.underground) > 1
		{	
			exe_perform_description_ground("underground");
			game_map.underground = exe_add_terrain_parts_to(game_map.underground);//this out to the end
			game_map.underground = exe_add_terrain_markers_to(game_map.underground,"underground");
		};
	if array_length(game_map.underdark) > 1
		{	
			//exe description for underdark
			game_map.underdark = exe_add_terrain_parts_to(game_map.underdark);
		};
	if array_length(game_map.underwater) > 1
		{	
			//exe description for underwater
			game_map.underwater = exe_add_terrain_parts_to(game_map.underwater);
		};
	if array_length(game_map.water_deepths) > 1
		{	
			//exe description for water_deepths
			game_map.water_deepths = exe_add_terrain_parts_to(game_map.water_deepths);
		};
	if array_length(game_map.water_abbys) > 1
		{	
			//exe description for water_abbys
			game_map.water_abbys = exe_add_terrain_parts_to(game_map.water_abbys);
		};
	
}