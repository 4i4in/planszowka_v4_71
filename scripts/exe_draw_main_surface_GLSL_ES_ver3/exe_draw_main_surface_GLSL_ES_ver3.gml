function exe_draw_main_surface_GLSL_ES_ver3()
{
	if !surface_exists(main_surface)	{	main_surface = surface_create(dgw,dgh);	}
	
	surface_set_target(main_surface);
	draw_clear(-1);
	draw_sprite_tiled_ext(	old_paper_1024,0,-(control_array.camx mod 1024),-(control_array.camy mod 1024),icon_scale,icon_scale,-1,1.	);
	
	if surface_exists(map_surface)			{	draw_surface_ext(map_surface,0,0,0.5,0.5,0,-1,1);	};
	
	//if surface_exists(depth_surface)		{	draw_surface_ext(depth_surface,dgw/2,0,0.5,0.5,0,-1,1);	};
	if surface_exists(glow_surface)		{	draw_surface_ext(glow_surface,dgw/2,0,0.5,0.5,0,-1,1);	};
	
	if surface_exists(features_surface)		{	draw_surface_ext(features_surface,0,dgh/2,0.5,0.5,0,-1,1);	};
	//if surface_exists(depth_surface)		{	draw_surface_ext(depth_surface,0,dgh/2,0.5,0.5,0,-1,1);	};
	//if surface_exists(depth_surface2)		{	draw_surface_ext(depth_surface2,0,dgh/2,0.5,0.5,0,-1,1);	};
	
	//if surface_exists(outline_surface)		{	draw_surface_ext(outline_surface,dgw/2,dgh/2,0.5,0.5,0,-1,1);	};
	if surface_exists(glow_surface2)		{	draw_surface_ext(glow_surface2,dgw/2,dgh/2,0.5,0.5,0,-1,1);	};
	
	surface_reset_target();
}