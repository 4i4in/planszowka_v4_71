function exe_prepare_surfaces()
{
	surface_set_target(map_surface);
	draw_clear_alpha(c_white,0);
	//draw_text(1000,300,"map surface GLSL_ES_ver2");
	surface_reset_target();
	
	surface_set_target(depth_surface);
	draw_clear_alpha(c_white,0);
	//draw_text(1000,400,"depth surface GLSL_ES_ver2");
	surface_reset_target();
	
	surface_set_target(depth_surface2);
	//draw_clear_alpha(c_white,0);
	draw_clear(c_red);
	//draw_text(1000,400,"depth surface GLSL_ES_ver2");
	surface_reset_target();
	
	surface_set_target(depth_surface3);
	//draw_clear_alpha(c_white,0);
	draw_clear(c_blue);
	//draw_text(1000,400,"depth surface GLSL_ES_ver2");
	surface_reset_target();
	
	surface_set_target(features_surface);
	draw_clear_alpha(c_white,0);
	//draw_text(1000,300,"feature surface GLSL_ES_ver2");
	surface_reset_target();

	surface_set_target(climate_surface);
	draw_clear_alpha(c_white,0);
	surface_reset_target();
	
	surface_set_target(terrain_cover_surface);
	draw_clear_alpha(c_white,0);
	surface_reset_target();
	
	surface_set_target(outline_surface);
	draw_clear_alpha(c_white,0);
	surface_reset_target();
	
	surface_set_target(glow_surface);
	draw_clear_alpha(c_black,0);
	surface_reset_target();
	
	surface_set_target(glow_surface2);
	draw_clear_alpha(c_black,0);
	surface_reset_target();
}