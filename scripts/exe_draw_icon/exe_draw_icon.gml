function exe_draw_icon(_xx1,_yy1,_pic)
{
	var _pic_found = 0;
	switch(_pic)
		{
				
			case "_32x32_button":
				draw_sprite_ext(_32x32_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x32_button_mo":
				draw_sprite_ext(_32x32_button_mo,game_time mod sprite_get_number(_32x32_button_mo),_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			
			case "_64x64_button":
				draw_sprite_ext(_64x64_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_button_mo":
				draw_sprite_ext(_64x64_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
				
			case "_32x32_move_menu":
				draw_sprite_ext(_32x32_move_menu,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x32_move_menu_mo":
				draw_sprite_ext(_32x32_move_menu_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x32_minimise":
				draw_sprite_ext(_32x32_minimise,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x32_minimise_mo":
				draw_sprite_ext(_32x32_minimise_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x32_expand":
				draw_sprite_ext(_32x32_expand,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x32_expand_mo":
				draw_sprite_ext(_32x32_expand_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x64_back":
				draw_sprite_ext(_32x64_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x64_back_mo":
				draw_sprite_ext(_32x64_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x64_back_green":
				draw_sprite_ext(_32x64_back_green,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x64_back_green_mo":
				draw_sprite_ext(_32x64_back_green_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x64_back_red":
				draw_sprite_ext(_32x64_back_red,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x64_back_red_mo":
				draw_sprite_ext(_32x64_back_red_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x128_back":
				draw_sprite_ext(_32x128_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x128_back_mo":
				draw_sprite_ext(_32x128_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x160_back":
				draw_sprite_ext(_32x160_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x160_back_mo":
				draw_sprite_ext(_32x160_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_32x256_back":
				draw_sprite_ext(_32x256_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_32x256_back_mo":
				draw_sprite_ext(_32x256_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x256_back":
				draw_sprite_ext(_64x256_back,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x256_back_mo":
				draw_sprite_ext(_64x256_back_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
	//paints
			case "_64x64_add_river_button":
				draw_sprite_ext(_64x64_add_river_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_add_river_button_mo":
				draw_sprite_ext(_64x64_add_river_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_delete_river_button":
				draw_sprite_ext(_64x64_delete_river_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_delete_river_button_mo":
				draw_sprite_ext(_64x64_delete_river_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_add_dwarfroad_button":
				draw_sprite_ext(_64x64_add_dwarfroad_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_add_dwarfroad_button_mo":
				draw_sprite_ext(_64x64_add_dwarfroad_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_delete_dwarfroad_button":
				draw_sprite_ext(_64x64_delete_dwarfroad_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_delete_dwarfroad_button_mo":
				draw_sprite_ext(_64x64_delete_dwarfroad_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			
			case "_64x64_add_path_button":
				draw_sprite_ext(_64x64_add_path_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_add_path_button_mo":
				draw_sprite_ext(_64x64_add_path_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_delete_path_button":
				draw_sprite_ext(_64x64_delete_path_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_delete_path_button_mo":
				draw_sprite_ext(_64x64_delete_path_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_add_road_button":
				draw_sprite_ext(_64x64_add_road_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_add_road_button_mo":
				draw_sprite_ext(_64x64_add_road_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_delete_road_button":
				draw_sprite_ext(_64x64_delete_road_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_delete_road_button_mo":
				draw_sprite_ext(_64x64_delete_road_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_add_peaks_button":
				draw_sprite_ext(_64x64_add_peaks_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_add_peaks_button_mo":
				draw_sprite_ext(_64x64_add_peaks_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_add_highland_button":
				draw_sprite_ext(_64x64_add_highland_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_add_highland_button_mo":
				draw_sprite_ext(_64x64_add_highland_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_add_lowland_button":
				draw_sprite_ext(_64x64_add_lowland_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_add_lowland_button_mo":
				draw_sprite_ext(_64x64_add_lowland_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_add_shallow_water_button":
				draw_sprite_ext(_64x64_add_shallow_water_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_add_shallow_water_button_mo":
				draw_sprite_ext(_64x64_add_shallow_water_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_add_deep_water_button":
				draw_sprite_ext(_64x64_add_deep_water_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_add_deep_water_button_mo":
				draw_sprite_ext(_64x64_add_deep_water_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_add_ocean_rifts_button":
				draw_sprite_ext(_64x64_add_ocean_rifts_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_add_ocean_rifts_button_mo":
				draw_sprite_ext(_64x64_add_ocean_rifts_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
				
			case "_64x64_change_humidity_down_button":
				draw_sprite_ext(_64x64_change_humidity_down_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_change_humidity_down_button_mo":
				draw_sprite_ext(_64x64_change_humidity_down_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_change_humidity_up_button":
				draw_sprite_ext(_64x64_change_humidity_up_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_change_humidity_up_button_mo":
				draw_sprite_ext(_64x64_change_humidity_up_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_change_temperature_down_button":
				draw_sprite_ext(_64x64_change_temperature_down_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_change_temperature_down_button_mo":
				draw_sprite_ext(_64x64_change_temperature_down_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_change_temperature_up_button":
				draw_sprite_ext(_64x64_change_temperature_up_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_change_temperature_up_button_mo":
				draw_sprite_ext(_64x64_change_temperature_up_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_change_wind_strength_down_button":
				draw_sprite_ext(_64x64_change_wind_strength_down_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_change_wind_strength_down_button_mo":
				draw_sprite_ext(_64x64_change_wind_strength_down_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
				
			case "_64x64_change_wind_strength_up_button":
				draw_sprite_ext(_64x64_change_wind_strength_up_button,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "_64x64_change_wind_strength_up_button_mo":
				draw_sprite_ext(_64x64_change_wind_strength_up_button_mo,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
	//paints end
	
	//brush size start
			case "brush_0":
				draw_sprite_ext(brush_0_icon,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "brush_1":
				draw_sprite_ext(brush_1_icon,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
			case "brush_2":
				draw_sprite_ext(brush_2_icon,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
				_pic_found = 1;	break;
	//brush size end
			
			case "srf_height_map":
				if surface_exists(height_map)
					{
						draw_surface_ext(height_map,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_height_map_mo":
				if surface_exists(height_map)
					{
						draw_surface_tiled_ext(height_map,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
			
		//minimap air start	
			case "srf_air_minimap":
				if surface_exists(air_minimap)
					{
						draw_surface_ext(air_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_air_minimap_mo":
				if surface_exists(air_minimap)
					{
						draw_surface_tiled_ext(air_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_air_minimap_moved":
				if surface_exists(air_minimap_moved)
					{
						draw_surface_ext(air_minimap_moved,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
		//minimap air end	
				
		//minimap ground start		
			case "srf_ground_minimap":
				if surface_exists(ground_minimap)
					{
						draw_surface_ext(ground_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_ground_minimap_mo":
				if surface_exists(ground_minimap)
					{
						draw_surface_tiled_ext(ground_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_ground_minimap_moved":
				if surface_exists(ground_minimap_moved)
					{
						draw_surface_ext(ground_minimap_moved,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
		//minimap ground end	
				
		//minimap underground start	
			case "srf_underground_minimap":
				if surface_exists(underground_minimap)
					{
						draw_surface_ext(underground_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_underground_minimap_mo":
				if surface_exists(underground_minimap)
					{
						draw_surface_tiled_ext(underground_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_underground_minimap_moved":
				if surface_exists(underground_minimap_moved)
					{
						draw_surface_ext(underground_minimap_moved,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
		//minimap underground end
		
		
		//minimap underdark start	
			case "srf_underdark_minimap":
				if surface_exists(underdark_minimap)
					{
						draw_surface_ext(underdark_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_underdark_minimap_mo":
				if surface_exists(underdark_minimap)
					{
						draw_surface_tiled_ext(underdark_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_underdark_minimap_moved":
				if surface_exists(underdark_minimap_moved)
					{
						draw_surface_ext(underdark_minimap_moved,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
		//minimap underdark end
		
		//minimap underwater start	
			case "srf_underwater_minimap":
				if surface_exists(underwater_minimap)
					{
						draw_surface_ext(underwater_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_underwater_minimap_mo":
				if surface_exists(underwater_minimap)
					{
						draw_surface_tiled_ext(underwater_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_underwater_minimap_moved":
				if surface_exists(underwater_minimap_moved)
					{
						draw_surface_ext(underwater_minimap_moved,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
		//minimap underwater end
		
		//minimap water_deepths start	
			case "srf_water_deepths_minimap":
				if surface_exists(water_deepths_minimap)
					{
						draw_surface_ext(water_deepths_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_water_deepths_minimap_mo":
				if surface_exists(water_deepths_minimap)
					{
						draw_surface_tiled_ext(water_deepths_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_water_deepths_minimap_moved":
				if surface_exists(water_deepths_minimap_moved)
					{
						draw_surface_ext(water_deepths_minimap_moved,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
		//minimap water_deepths end
		
		//minimap water_abbys start
			case "srf_water_abbys_minimap":
				if surface_exists(water_abbys_minimap)
					{
						draw_surface_ext(water_abbys_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_water_abbys_minimap_mo":
				if surface_exists(water_abbys_minimap)
					{
						draw_surface_tiled_ext(water_abbys_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_water_abbys_minimap_moved":
				if surface_exists(water_abbys_minimap_moved)
					{
						draw_surface_ext(water_abbys_minimap_moved,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
		//minimap water_abbys end
		
		//minimap fairyland start
			case "srf_fairyland_minimap":
				if surface_exists(fairyland_minimap)
					{
						draw_surface_ext(fairyland_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_fairyland_minimap_mo":
				if surface_exists(fairyland_minimap)
					{
						draw_surface_tiled_ext(fairyland_minimap,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,-1,1);
						_pic_found = 1;
					}
				break;
			case "srf_fairyland_minimap_moved":
				if surface_exists(fairyland_minimap_moved)
					{
						draw_surface_ext(fairyland_minimap_moved,_xx1,_yy1,map_generator.show_scale,map_generator.show_scale,0,-1,1);
						_pic_found = 1;
					}
				break;
		//minimap fairyland end
			
		}
		
	if _pic_found < 1
		{
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			
			draw_sprite_ext(_no_pic,-1,_xx1,_yy1,icon_scale,icon_scale,0,-1,1);
			draw_set_color(c_red);
			draw_text(_xx1,_yy1,"no_picture : \n" + string(_pic));
			draw_set_color(c_white);
			
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
		}
}