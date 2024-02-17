function exe_adapt_terrain_markers_underground(_local_struct,_x1,_y1,_terrain_markers_array,_map)
{
	switch(_local_struct.base_name)
		{	
			case "solid_rocks":
				var _rsn_multipler = [[2.,1.5,2.],[1.5,1.,1.5],[2.,1.5,2.]]; //temp fix for ignoringn dow and right
				var _same_neighbours = exe_return_same_neighbours(_map,_x1,_y1,_local_struct,_rsn_multipler);
				var _tex_marker_pictr = tex_struct._terrain_markers_color_solid_rocks;
				var _tex_marker_alpha = tex_struct._terrain_markers_alpha_solid_rocks;
				var _vbuff = vbuff_64x64_flat;
				if _local_struct.climate[0] < control_array.climate[0]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_solid_rocks_cold;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_solid_rocks_cold;
					}
				if _local_struct.climate[0] > control_array.climate[1]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_solid_rocks_hot;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_solid_rocks_hot;
					}
				_terrain_markers_array = exe_return_terrain_markers_big(_terrain_markers_array,_vbuff,_same_neighbours,_tex_marker_pictr,_tex_marker_alpha);
			break;
			
			case "soft_rocks":
				var _rsn_multipler = [[2.,1.5,2.],[1.5,1.,1.5],[2.,1.5,2.]]; //temp fix for ignoringn dow and right
				var _same_neighbours = exe_return_same_neighbours(_map,_x1,_y1,_local_struct,_rsn_multipler);
				var _tex_marker_pictr = tex_struct._terrain_markers_color_soft_rocks;
				var _tex_marker_alpha = tex_struct._terrain_markers_alpha_soft_rocks;
				var _vbuff = vbuff_64x64_flat;
				if _local_struct.climate[0] < control_array.climate[0]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_soft_rocks_cold;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_soft_rocks_cold;
					}
				if _local_struct.climate[0] > control_array.climate[1]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_soft_rocks_hot;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_soft_rocks_hot;
					}
				_terrain_markers_array = exe_return_terrain_markers_big(_terrain_markers_array,_vbuff,_same_neighbours,_tex_marker_pictr,_tex_marker_alpha);
			break;
			
			case "soft_earth":
				var _rsn_multipler = [[2.,1.5,2.],[1.5,1.,1.5],[2.,1.5,2.]]; //temp fix for ignoringn dow and right
				var _same_neighbours = exe_return_same_neighbours(_map,_x1,_y1,_local_struct,_rsn_multipler);
				var _tex_marker_pictr = tex_struct._terrain_markers_color_soft_earth;
				var _tex_marker_alpha = tex_struct._terrain_markers_alpha_soft_earth;
				var _vbuff = vbuff_64x64_flat;
				if _local_struct.climate[0] < control_array.climate[0]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_soft_earth_cold;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_soft_earth_cold;
					}
				if _local_struct.climate[0] > control_array.climate[1]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_soft_earth_hot;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_soft_earth_hot;
					}
				_terrain_markers_array = exe_return_terrain_markers_big(_terrain_markers_array,_vbuff,_same_neighbours,_tex_marker_pictr,_tex_marker_alpha);
			break;
			
			case "water_caves":
				var _rsn_multipler = [[2.,1.5,2.],[1.5,1.,1.5],[2.,1.5,2.]]; //temp fix for ignoringn dow and right
				var _same_neighbours = exe_return_same_neighbours(_map,_x1,_y1,_local_struct,_rsn_multipler);
				var _tex_marker_pictr = tex_struct._terrain_markers_color_water_caves;
				var _tex_marker_alpha = tex_struct._terrain_markers_alpha_water_caves;
				var _vbuff = vbuff_64x64_flat;
				if _local_struct.climate[0] < control_array.climate[0]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_water_caves_cold;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_water_caves_cold;
					}
				if _local_struct.climate[0] > control_array.climate[1]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_water_caves_hot;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_water_caves_hot;
					}
				_terrain_markers_array = exe_return_terrain_markers_big(_terrain_markers_array,_vbuff,_same_neighbours,_tex_marker_pictr,_tex_marker_alpha);
			break;
		}
	return(_terrain_markers_array);
}