function exe_return_struct_descriptor_values()
{
	//name, fertility add, rocks structures add,
	//used in exe_check_fertile, exe_check_rocks
	var _struct =
		{
			
			avalanche :					[-3,0],
			
			barren :					[-1,1],
			barren_rocks :				[-2,3],
			broken_ice :				[-3,0],
			
			clear_skies :				[1,0],
			
			chasms :					[0,1],//underground
			cragscape :					[0,2],//underground
			caverns :					[1,1],//underground
			clefts :					[0,0],//underground
			
			deep_snow_cover :			[-2,0],
			desert :					[-2,1],
			dry_grass :					[1,0],
			dry_wood :					[1,0],
			
			eroded_rocks :				[-1,0],
			extreeme_climbing :			[0,0],
			
			forest :					[3,0],
			fertile :					[2,0],
			freezing_winds :			[-1,0],
			frozen_sea_plain :			[-3,0],
			fog :						[0,0],
			fragile_ice_formations :	[-1,0],
			fungal_live :				[2,0],//underground
			fungal_forest :				[3,0],//underground
			
			faultlines :				[1,2],//underground
			
			grass :						[2,0],
			glacier :					[-4,2],
			
			hot_caves :					[0,0],
			headwaters :				[3,0],
			
			icestorms :					[-3,0],
			intense_heat :				[-2,1],
			
			jungle :					[3,0],
			
			natural_ice_habitats :		[0,0],
			
			prairie :					[2,0],
			plankton :					[3,0],
			
			quiet :						[0,0],
			
			rain :						[1,0],
			ravines :					[0,2],//underground
			
			
			storms :					[-2,-2],
			strong_wind :				[-1,-1],
			swmap :						[2,0],
			stable_temperatures :		[2,0],
			sandstorms :				[-2,-2],
			steppe :					[1,0],
			savanna :					[2,0],
			snowstorms :				[-2,2],
			
			tundra :					[1,0],
			taiga :						[1,0],
			
			wood :						[3,0],
		}
	return(_struct);
}