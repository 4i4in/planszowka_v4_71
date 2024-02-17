function exe_adapt_terrain_markers_ground(_local_struct,_x1,_y1,_terrain_markers_array,_map)
{
	switch(_local_struct.base_name)
		{	
			case "peaks":
				//TBD checking neigbours
				var _rsn_multipler = [[2,1.5,2.],[1.5,0.6,2.],[2,1.5,2.]]; //temp fix for ignoringn dow and right
				var _same_neighbours = exe_return_same_neighbours(_map,_x1,_y1,_local_struct,_rsn_multipler);
				var _tex_marker_pictr = tex_struct._terrain_markers_color_peaks;
				var _tex_marker_alpha = tex_struct._terrain_markers_alpha_peaks;
				var _vbuff = vbuff_64x64_up_down;
				if _local_struct.climate[0] < control_array.climate[0]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_peaks_cold;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_peaks_cold;
					}
				if _local_struct.climate[0] > control_array.climate[1]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_peaks_hot;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_peaks_hot;
					}
				_terrain_markers_array = exe_return_terrain_markers_big(_terrain_markers_array,_vbuff,_same_neighbours,_tex_marker_pictr,_tex_marker_alpha);
			break;
			
			case "highland":
				//TBD checking neigbours
				var _rsn_multipler = [[2,1.5,2.],[1.5,0.6,2.],[2,1.5,2.]]; //temp fix for ignoringn dow and right
				var _same_neighbours = exe_return_same_neighbours(_map,_x1,_y1,_local_struct,_rsn_multipler);
				var _tex_marker_pictr = tex_struct._terrain_markers_color_highland;
				var _tex_marker_alpha = tex_struct._terrain_markers_alpha_highland;
				var _vbuff = vbuff_64x64_up_down;
				if _local_struct.climate[0] < control_array.climate[0]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_highland_cold;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_highland_cold;
					}
				if _local_struct.climate[0] > control_array.climate[1]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_highland_hot;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_highland_hot;
					}
				_terrain_markers_array = exe_return_terrain_markers_big(_terrain_markers_array,_vbuff,_same_neighbours,_tex_marker_pictr,_tex_marker_alpha);
			break;
			
			case "lowland":
				//TBD checking neigbours
				var _rsn_multipler = [[1.5,1.,1.5],[1.,0.6,1.],[1.5,1.,1.5]]; //temp fix for ignoringn dow and right
				var _same_neighbours = exe_return_same_neighbours(_map,_x1,_y1,_local_struct,_rsn_multipler);
				var _tex_marker_pictr = tex_struct._terrain_markers_color_lowland;
				var _tex_marker_alpha = tex_struct._terrain_markers_alpha_lowland;
				var _vbuff = vbuff_64x64_flat;
				if _local_struct.climate[0] < control_array.climate[0]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_lowland_cold;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_lowland_cold;
					}
				if _local_struct.climate[0] > control_array.climate[1]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_lowland_hot;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_lowland_hot;
					}
				_terrain_markers_array = exe_return_terrain_markers_big(_terrain_markers_array,_vbuff,_same_neighbours,_tex_marker_pictr,_tex_marker_alpha);
			break;
			
			case "shallow_water":
				//TBD checking neigbours
				var _rsn_multipler = [[1.5,1.,1.5],[1.,0.6,1.],[1.5,1.,1.5]]; //temp fix for ignoringn dow and right
				var _same_neighbours = exe_return_same_neighbours(_map,_x1,_y1,_local_struct,_rsn_multipler);
				var _tex_marker_pictr = tex_struct._terrain_markers_color_shallow_water;
				var _tex_marker_alpha = tex_struct._terrain_markers_alpha_shallow_water;
				var _vbuff = vbuff_64x64_flat;
				if _local_struct.climate[0] < control_array.climate[0]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_shallow_water_cold;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_shallow_water_cold;
					}
				if _local_struct.climate[0] > control_array.climate[1]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_shallow_water_hot;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_shallow_water_hot;
					}
				_terrain_markers_array = exe_return_terrain_markers_big(_terrain_markers_array,_vbuff,_same_neighbours,_tex_marker_pictr,_tex_marker_alpha);
			break;
			
			case "deep_water":
				//TBD checking neigbours
				var _rsn_multipler = [[1.5,1.,1.5],[1.,0.6,1.],[1.5,1.,1.5]]; //temp fix for ignoringn dow and right
				var _same_neighbours = exe_return_same_neighbours(_map,_x1,_y1,_local_struct,_rsn_multipler);
				var _tex_marker_pictr = tex_struct._terrain_markers_color_deep_water;
				var _tex_marker_alpha = tex_struct._terrain_markers_alpha_deep_water;
				var _vbuff = vbuff_64x64_flat;
				if _local_struct.climate[0] < control_array.climate[0]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_deep_water_cold;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_deep_water_cold;
					}
				if _local_struct.climate[0] > control_array.climate[1]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_deep_water_hot;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_deep_water_hot;
					}
				_terrain_markers_array = exe_return_terrain_markers_big(_terrain_markers_array,_vbuff,_same_neighbours,_tex_marker_pictr,_tex_marker_alpha);
			break;
			
			case "ocean_rifts":
				//TBD checking neigbours
				var _rsn_multipler = [[1.5,1.,1.5],[1.,0.6,1.],[1.5,1.,1.5]]; //temp fix for ignoringn dow and right
				var _same_neighbours = exe_return_same_neighbours(_map,_x1,_y1,_local_struct,_rsn_multipler);
				var _tex_marker_pictr = tex_struct._terrain_markers_color_ocean_rifts;
				var _tex_marker_alpha = tex_struct._terrain_markers_alpha_ocean_rifts;
				var _vbuff = vbuff_64x64_flat;
				if _local_struct.climate[0] < control_array.climate[0]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_ocean_rifts_cold;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_ocean_rifts_cold;
					}
				if _local_struct.climate[0] > control_array.climate[1]
					{
						_tex_marker_pictr = tex_struct._terrain_markers_color_ocean_rifts_hot;
						_tex_marker_alpha = tex_struct._terrain_markers_alpha_ocean_rifts_hot;
					}
				_terrain_markers_array = exe_return_terrain_markers_big(_terrain_markers_array,_vbuff,_same_neighbours,_tex_marker_pictr,_tex_marker_alpha);
			break;
		}
	return(_terrain_markers_array);
}