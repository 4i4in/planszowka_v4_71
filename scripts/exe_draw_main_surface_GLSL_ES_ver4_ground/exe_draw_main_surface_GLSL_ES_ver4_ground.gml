function exe_draw_main_surface_GLSL_ES_ver4_ground(_pipeline)
{
	if !surface_exists(base_surface)	{	base_surface = surface_create(dgw,dgh);	}
	surface_set_target(base_surface);
	draw_clear(c_dkgray);
	draw_sprite_tiled_ext(	old_paper_1024,0,-(control_array.camx mod 1024),-(control_array.camy mod 1024),icon_scale,icon_scale,-1,1.	);
	if surface_exists(map_surface)			
		{	
			//gpu_set_blendmode_ext(bm_src_alpha, bm_inv_src_colour);
			gpu_set_blendmode_ext(bm_dest_colour, bm_zero);
			draw_surface(map_surface,0,0);		
			gpu_set_blendmode(bm_normal);
		};
	surface_reset_target();
	
	if !surface_exists(main_surface)	{	main_surface = surface_create(dgw,dgh);	}
	
	surface_set_target(main_surface);
	draw_clear(c_dkgray);
	shader_set(shd_flat_layers_2);
	texture_set_stage(shader_get_sampler_index(shd_flat_layers_2,"base_surface"),surface_get_texture(base_surface));
	texture_set_stage(shader_get_sampler_index(shd_flat_layers_2,"outline_surface"),surface_get_texture(outline_surface));
	texture_set_stage(shader_get_sampler_index(shd_flat_layers_2,"cover_surface"),surface_get_texture(terrain_cover_surface));
	matrix_set(matrix_world, matrix_build(0, 0, 1, 0, 0, 0, 1, 1, 1));
	switch(_pipeline)
		{
			case "mini":	vertex_submit(vbuff_320x320, pr_trianglelist, -1);	break;
			case "normal":	vertex_submit(vbuff_dgw_dgh, pr_trianglelist, -1);	break;
		}	
	shader_reset();
	
		
	if control_array.draw_tile_climate
		{
			if surface_exists(climate_surface)		{	draw_surface(climate_surface,0,0);	};
		}	
	if control_array.dev_show_depth_surface > 0
		{
			if surface_exists(depth_surface)
				{	
					draw_set_alpha(control_array.dev_show_depth_surface);
					draw_surface(depth_surface,0,0);
					draw_set_alpha(1);
				};	
		}
	if control_array.draw_grid
		{
			draw_sprite_tiled_ext(	grid_tile,0,-(control_array.camx mod control_array.tile_size),-(control_array.camy mod control_array.tile_size),icon_scale,icon_scale,-1,1.	);
		}
	surface_reset_target();
	matrix_set(matrix_world, matrix_build_identity());
}