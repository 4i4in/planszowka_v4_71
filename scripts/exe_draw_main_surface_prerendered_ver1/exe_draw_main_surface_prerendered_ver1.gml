function exe_draw_main_surface_prerendered_ver1()
{
	
	if !surface_exists(main_surface)	{	main_surface = surface_create(dgw,dgh);	}
	surface_set_target(main_surface);
	draw_clear(c_dkgray);
	
	if surface_exists(map_surface)		{	draw_surface(map_surface,0,0);	};	

	
	if control_array.draw_grid
		{
			draw_sprite_tiled_ext(	grid_tile,0,-(control_array.camx mod control_array.tile_size),-(control_array.camy mod control_array.tile_size),icon_scale,icon_scale,-1,1.	);
		}
	surface_reset_target();
}