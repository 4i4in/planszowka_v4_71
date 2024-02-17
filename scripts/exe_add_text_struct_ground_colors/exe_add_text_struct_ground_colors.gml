function exe_add_text_struct_ground_colors(_tex_struct)
{
	//peaks
		_tex_struct._terrain_markers_color_peaks =	[
											sprite_get_texture(terrain_marker_peak1,0),
											sprite_get_texture(terrain_marker_peak2,0),
											sprite_get_texture(terrain_marker_peak3,0),
											sprite_get_texture(terrain_marker_peak4,0)
									];
		_tex_struct._terrain_markers_alpha_peaks  =	[
											sprite_get_texture(terrain_marker_peak1_alpha,0),
											sprite_get_texture(terrain_marker_peak2_alpha,0),
											sprite_get_texture(terrain_marker_peak3_alpha,0),
											sprite_get_texture(terrain_marker_peak4_alpha,0)
										];
		_tex_struct._terrain_markers_color_peaks_cold =	[
											sprite_get_texture(terrain_marker_peak1_cold,0),
											sprite_get_texture(terrain_marker_peak2_cold,0),
											sprite_get_texture(terrain_marker_peak3_cold,0),
											sprite_get_texture(terrain_marker_peak4_cold,0)
									];
		_tex_struct._terrain_markers_alpha_peaks_cold  =	[
											sprite_get_texture(terrain_marker_peak1_alpha_cold,0),
											sprite_get_texture(terrain_marker_peak2_alpha_cold,0),
											sprite_get_texture(terrain_marker_peak3_alpha_cold,0),
											sprite_get_texture(terrain_marker_peak4_alpha_cold,0)
										];
		_tex_struct._terrain_markers_color_peaks_hot =	[
											sprite_get_texture(terrain_marker_peak1_hot,0),
											sprite_get_texture(terrain_marker_peak2_hot,0),
											sprite_get_texture(terrain_marker_peak3_hot,0),
											sprite_get_texture(terrain_marker_peak4_hot,0)
									];
		_tex_struct._terrain_markers_alpha_peaks_hot  =	[
											sprite_get_texture(terrain_marker_peak1_alpha_hot,0),
											sprite_get_texture(terrain_marker_peak2_alpha_hot,0),
											sprite_get_texture(terrain_marker_peak3_alpha_hot,0),
											sprite_get_texture(terrain_marker_peak4_alpha_hot,0)
										];	
		//peaks end
		
		
		//highland
		_tex_struct._terrain_markers_color_highland =	[
											sprite_get_texture(terrain_marker_highland1,0),
											sprite_get_texture(terrain_marker_highland2,0),
											sprite_get_texture(terrain_marker_highland3,0)
									];
		_tex_struct._terrain_markers_alpha_highland  =	[
											sprite_get_texture(terrain_marker_highland1_alpha,0),
											sprite_get_texture(terrain_marker_highland2_alpha,0),
											sprite_get_texture(terrain_marker_highland3_alpha,0)
										];
		_tex_struct._terrain_markers_color_highland_cold =	[
											sprite_get_texture(terrain_marker_highland1_cold,0),
											sprite_get_texture(terrain_marker_highland2_cold,0),
											sprite_get_texture(terrain_marker_highland3_cold,0)
									];
		_tex_struct._terrain_markers_alpha_highland_cold  =	[
											sprite_get_texture(terrain_marker_highland1_alpha_cold,0),
											sprite_get_texture(terrain_marker_highland2_alpha_cold,0),
											sprite_get_texture(terrain_marker_highland3_alpha_cold,0)
										];
		_tex_struct._terrain_markers_color_highland_hot =	[
											sprite_get_texture(terrain_marker_highland1_hot,0),
											sprite_get_texture(terrain_marker_highland2_hot,0),
											sprite_get_texture(terrain_marker_highland3_hot,0)
									];
		_tex_struct._terrain_markers_alpha_highland_hot  =	[
											sprite_get_texture(terrain_marker_highland1_alpha_hot,0),
											sprite_get_texture(terrain_marker_highland2_alpha_hot,0),
											sprite_get_texture(terrain_marker_highland3_alpha_hot,0)
										];
		//highland end
		
		//lowland
		_tex_struct._terrain_markers_color_lowland =	[
											sprite_get_texture(terrain_marker_lowland1,0),
											sprite_get_texture(terrain_marker_lowland2,0),
											sprite_get_texture(terrain_marker_lowland3,0)
									];
		_tex_struct._terrain_markers_alpha_lowland  =	[
											sprite_get_texture(terrain_marker_lowland1_alpha,0),
											sprite_get_texture(terrain_marker_lowland2_alpha,0),
											sprite_get_texture(terrain_marker_lowland3_alpha,0)
										];
		_tex_struct._terrain_markers_color_lowland_cold =	[
											sprite_get_texture(terrain_marker_lowland1_cold,0),
											sprite_get_texture(terrain_marker_lowland2_cold,0),
											sprite_get_texture(terrain_marker_lowland3_cold,0)
									];
		_tex_struct._terrain_markers_alpha_lowland_cold  =	[
											sprite_get_texture(terrain_marker_lowland1_alpha_cold,0),
											sprite_get_texture(terrain_marker_lowland2_alpha_cold,0),
											sprite_get_texture(terrain_marker_lowland3_alpha_cold,0)
										];
		_tex_struct._terrain_markers_color_lowland_hot =	[
											sprite_get_texture(terrain_marker_lowland1_hot,0),
											sprite_get_texture(terrain_marker_lowland2_hot,0),
											sprite_get_texture(terrain_marker_lowland3_hot,0)
									];
		_tex_struct._terrain_markers_alpha_lowland_hot  =	[
											sprite_get_texture(terrain_marker_lowland1_alpha_hot,0),
											sprite_get_texture(terrain_marker_lowland2_alpha_hot,0),
											sprite_get_texture(terrain_marker_lowland3_alpha_hot,0)
										];	
		//lowland end
		
		//shallow_water
		_tex_struct._terrain_markers_color_shallow_water =	[
											sprite_get_texture(terrain_marker_shallow_water1,0),
											sprite_get_texture(terrain_marker_shallow_water2,0),
											sprite_get_texture(terrain_marker_shallow_water3,0)
									];
		_tex_struct._terrain_markers_alpha_shallow_water  =	[
											sprite_get_texture(terrain_marker_shallow_water1_alpha,0),
											sprite_get_texture(terrain_marker_shallow_water2_alpha,0),
											sprite_get_texture(terrain_marker_shallow_water3_alpha,0)
										];
		_tex_struct._terrain_markers_color_shallow_water_cold =	[
											sprite_get_texture(terrain_marker_shallow_water1_cold,0),
											sprite_get_texture(terrain_marker_shallow_water2_cold,0),
											sprite_get_texture(terrain_marker_shallow_water3_cold,0)
									];
		_tex_struct._terrain_markers_alpha_shallow_water_cold  =	[
											sprite_get_texture(terrain_marker_shallow_water1_alpha_cold,0),
											sprite_get_texture(terrain_marker_shallow_water2_alpha_cold,0),
											sprite_get_texture(terrain_marker_shallow_water3_alpha_cold,0)
										];
		_tex_struct._terrain_markers_color_shallow_water_hot =	[
											sprite_get_texture(terrain_marker_shallow_water1_hot,0),
											sprite_get_texture(terrain_marker_shallow_water2_hot,0),
											sprite_get_texture(terrain_marker_shallow_water3_hot,0)
									];
		_tex_struct._terrain_markers_alpha_shallow_water_hot  =	[
											sprite_get_texture(terrain_marker_shallow_water1_alpha_hot,0),
											sprite_get_texture(terrain_marker_shallow_water2_alpha_hot,0),
											sprite_get_texture(terrain_marker_shallow_water3_alpha_hot,0)
										];	
		//shallow_water end
		
		//deep_water
		_tex_struct._terrain_markers_color_deep_water =	[
											sprite_get_texture(terrain_marker_deep_water1,0),
											sprite_get_texture(terrain_marker_deep_water2,0),
											sprite_get_texture(terrain_marker_deep_water3,0)
									];
		_tex_struct._terrain_markers_alpha_deep_water  =	[
											sprite_get_texture(terrain_marker_deep_water1_alpha,0),
											sprite_get_texture(terrain_marker_deep_water2_alpha,0),
											sprite_get_texture(terrain_marker_deep_water3_alpha,0)
										];
		_tex_struct._terrain_markers_color_deep_water_cold =	[
											sprite_get_texture(terrain_marker_deep_water1_cold,0),
											sprite_get_texture(terrain_marker_deep_water2_cold,0),
											sprite_get_texture(terrain_marker_deep_water3_cold,0)
									];
		_tex_struct._terrain_markers_alpha_deep_water_cold  =	[
											sprite_get_texture(terrain_marker_deep_water1_alpha_cold,0),
											sprite_get_texture(terrain_marker_deep_water2_alpha_cold,0),
											sprite_get_texture(terrain_marker_deep_water3_alpha_cold,0)
										];
		_tex_struct._terrain_markers_color_deep_water_hot =	[
											sprite_get_texture(terrain_marker_deep_water1_hot,0),
											sprite_get_texture(terrain_marker_deep_water2_hot,0),
											sprite_get_texture(terrain_marker_deep_water3_hot,0)
									];
		_tex_struct._terrain_markers_alpha_deep_water_hot  =	[
											sprite_get_texture(terrain_marker_deep_water1_alpha_hot,0),
											sprite_get_texture(terrain_marker_deep_water2_alpha_hot,0),
											sprite_get_texture(terrain_marker_deep_water3_alpha_hot,0)
										];	
		//deep_water end
		
		//ocean_rifts
		_tex_struct._terrain_markers_color_ocean_rifts =	[
											sprite_get_texture(terrain_marker_ocean_rifts1,0),
											sprite_get_texture(terrain_marker_ocean_rifts2,0),
											sprite_get_texture(terrain_marker_ocean_rifts3,0)
									];
		_tex_struct._terrain_markers_alpha_ocean_rifts  =	[
											sprite_get_texture(terrain_marker_ocean_rifts1_alpha,0),
											sprite_get_texture(terrain_marker_ocean_rifts2_alpha,0),
											sprite_get_texture(terrain_marker_ocean_rifts3_alpha,0)
										];
		_tex_struct._terrain_markers_color_ocean_rifts_cold =	[
											sprite_get_texture(terrain_marker_ocean_rifts1_cold,0),
											sprite_get_texture(terrain_marker_ocean_rifts2_cold,0),
											sprite_get_texture(terrain_marker_ocean_rifts3_cold,0)
									];
		_tex_struct._terrain_markers_alpha_ocean_rifts_cold  =	[
											sprite_get_texture(terrain_marker_ocean_rifts1_alpha_cold,0),
											sprite_get_texture(terrain_marker_ocean_rifts2_alpha_cold,0),
											sprite_get_texture(terrain_marker_ocean_rifts3_alpha_cold,0)
										];
		_tex_struct._terrain_markers_color_ocean_rifts_hot =	[
											sprite_get_texture(terrain_marker_ocean_rifts1_hot,0),
											sprite_get_texture(terrain_marker_ocean_rifts2_hot,0),
											sprite_get_texture(terrain_marker_ocean_rifts3_hot,0)
									];
		_tex_struct._terrain_markers_alpha_ocean_rifts_hot  =	[
											sprite_get_texture(terrain_marker_ocean_rifts1_alpha_hot,0),
											sprite_get_texture(terrain_marker_ocean_rifts2_alpha_hot,0),
											sprite_get_texture(terrain_marker_ocean_rifts3_alpha_hot,0)
										];
		//ocean_rifts end
}