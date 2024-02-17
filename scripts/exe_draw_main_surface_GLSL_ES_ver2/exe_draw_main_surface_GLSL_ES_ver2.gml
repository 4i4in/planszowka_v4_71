function exe_draw_main_surface_GLSL_ES_ver2()
{
	if !surface_exists(main_surface)	{	main_surface = surface_create(dgw,dgh);	}
	
	surface_set_target(main_surface);
	draw_clear(-1);
	draw_sprite_tiled(	old_paper_1024,0,-(control_array.camx mod 1024),-(control_array.camy mod 1024)	);
	//draw_text(1000,200,"main surface GLSL_ES_ver2");
	//if surface_exists(map_raw_surface)		{	draw_surface_ext(map_raw_surface,0,0,0.3,0.3,0,-1,1);	};
	
	//if surface_exists(map_surface)		{	draw_surface(map_surface,0,0);	};
	
	if keyboard_check(vk_space)
		{
			if surface_exists(map_surface)			{	draw_surface_ext(map_surface,0,0,0.5,0.5,0,-1,1);	};
			if surface_exists(depth_surface)		{	draw_surface_ext(depth_surface,dgw/2,0,0.5,0.5,0,-1,1);	};
			if surface_exists(features_surface)		{	draw_surface_ext(features_surface,0,dgh/2,0.5,0.5,0,-1,1);	};
			if surface_exists(outline_surface)		{	draw_surface_ext(outline_surface,dgw/2,dgh/2,0.5,0.5,0,-1,1);	};
		}
	else
		{
			
			if surface_exists(map_surface)			
				{	
					//gpu_set_blendmode_ext(bm_src_alpha, bm_inv_src_colour);
					gpu_set_blendmode_ext(bm_dest_colour, bm_zero);
					draw_surface(map_surface,0,0);		
					gpu_set_blendmode(bm_normal);
				};
			if surface_exists(outline_surface)		
				{	
					//shader_set(shd_map_plus_outline);
					//texture_set_stage(shader_get_sampler_index(shd_map_plus_outline,"outline_texture"),surface_get_texture(outline_surface));
					//vertex_submit(vbuff_dgw_dgh, pr_trianglelist, -1);
					//shader_reset();
					//matrix_set(matrix_world, matrix_build_identity());
					draw_surface(outline_surface,0,0);
				};
			if control_array.draw_tile_climate
				{
					if surface_exists(climate_surface)		{	draw_surface(climate_surface,0,0);	};
				}	
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
	
	surface_reset_target();
}