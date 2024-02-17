function exe_map_draw_surface_GLSL_ES_ver2(_render_pass)
{
	if _render_pass = 1
		{
			if !surface_exists(map_surface)				{	map_surface = surface_create(dgw,dgh);	};
			if !surface_exists(depth_surface)			{	depth_surface = surface_create(dgw,dgh);	};
			if !surface_exists(depth_surface2)			{	depth_surface2 = surface_create(dgw,dgh);	};
			if !surface_exists(depth_surface3)			{	depth_surface3 = surface_create(dgw,dgh);	};
			if !surface_exists(features_surface)		{	features_surface = surface_create(dgw,dgh);	};
			if !surface_exists(climate_surface)			{	climate_surface = surface_create(dgw,dgh);	};
			if !surface_exists(terrain_cover_surface)	{	terrain_cover_surface = surface_create(dgw,dgh);	};
			if !surface_exists(outline_surface)			{	outline_surface = surface_create(dgw,dgh);	}
			if !surface_exists(glow_surface)			{	glow_surface = surface_create(dgw,dgh);	}
			if !surface_exists(glow_surface2)			{	glow_surface2 = surface_create(dgw,dgh);	}
			
			exe_prepare_surfaces();//!!!it would not work without it!!!
		}
		
	if _render_pass = 1
		{
			shader_set(shd_map_base_pass1);
			surface_set_target_ext(0, map_surface);
			surface_set_target_ext(1, depth_surface);
		
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass1, "dgw"), 1.0/dgw);
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass1, "dgh"), 1.0/dgh);
	
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass1, "cam_xref"), control_array.camx mod tex_struct._big_sqr_size	);
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass1, "cam_yref"), control_array.camy mod tex_struct._big_sqr_size	);
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass1, "shd_big_sqr_size"), tex_struct._big_sqr_size);
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass1, "shd_med_sqr_size"), tex_struct._med_sqr_size);
		}
	if _render_pass = 2
		{
			shader_set(shd_map_base_pass2);
			surface_set_target_ext(0, map_surface);
			surface_set_target_ext(1, features_surface);
			surface_set_target_ext(2, depth_surface2);
			surface_set_target_ext(3, glow_surface);
		
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass2, "dgw"), 1.0/dgw);
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass2, "dgh"), 1.0/dgh);
			
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass2, "cam_xref"), control_array.camx mod tex_struct._big_sqr_size	);
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass2, "cam_yref"), control_array.camy mod tex_struct._big_sqr_size	);
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass2, "shd_big_sqr_size"), tex_struct._big_sqr_size);
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass2, "shd_med_sqr_size"), tex_struct._med_sqr_size);
		}	
	
	if _render_pass = 3
		{
			shader_set(shd_map_base_pass3);
			surface_set_target_ext(0, climate_surface);
		}	
	if _render_pass = 4
		{
			shader_set(shd_map_base_pass4);
			surface_set_target_ext(0, terrain_cover_surface);
		
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass4, "dgw"), 1.0/dgw);
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass4, "dgh"), 1.0/dgh);
			texture_set_stage(shader_get_sampler_index(shd_map_base_pass4,"depth_surface"),surface_get_texture(depth_surface3));
	
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass4, "cam_xref"), control_array.camx mod tex_struct._big_sqr_size	);
			shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass4, "cam_yref"), control_array.camy mod tex_struct._big_sqr_size	);
		}	
	
	for(var _x1 = control_array.map_cam_x_from; _x1 < control_array.map_cam_x_to; _x1++)
		{
			for(var _y1 = control_array.map_cam_y_from; _y1 < control_array.map_cam_y_to; _y1++)
				{
					var _xx1 = _x1;	var _yy1 = _y1;
					
					var _xref = _xx1 * control_array.tile_size - control_array.camx;
					var _yref = _yy1 * control_array.tile_size - control_array.camy;
					
					
					if _xx1 < 0						{_xx1 += control_array.map_x;};
					if _xx1 > control_array.map_x-1	{_xx1 -= control_array.map_x;};
					if _yy1 < 0						{_yy1 += control_array.map_y;};
					if _yy1 > control_array.map_y-1	{_yy1 -= control_array.map_y;};

					var _tile = game_map[$ control_array.map_current_name_level][_xx1][_yy1];
					
					switch(control_array.map_current_name_level)
						{
							case "air":	
								break;
								
							case "ground":	exe_draw_tiles_ground_GLSL_ES_ver2(_xx1,_yy1,_tile,_xref,_yref,_render_pass);
								break;
								
							case "underground":	exe_draw_tiles_underground_GLSL_ES_ver2(_xx1,_yy1,_tile,_xref,_yref,_render_pass);
								break;
								
							case "underdark":	exe_draw_tiles_underdark_GLSL_ES_ver2(_xx1,_yy1,_tile,_xref,_yref,_render_pass);
								break;
								
							case "underwater":	exe_draw_tiles_underwater_GLSL_ES_ver2(_xx1,_yy1,_tile,_xref,_yref,_render_pass);
								break;
								
							case "water_deepths":	exe_draw_tiles_water_deepths_GLSL_ES_ver2(_xx1,_yy1,_tile,_xref,_yref,_render_pass);
								break;
								
							case "water_abbys":	exe_draw_tiles_water_abbys_GLSL_ES_ver2(_xx1,_yy1,_tile,_xref,_yref,_render_pass);
								break;
								
							case "fairyland":
								break;
						}
				}
		}
	
	surface_reset_target();
	shader_reset();
}