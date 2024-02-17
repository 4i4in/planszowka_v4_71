function exe_draw_tiles_underground_GLSL_ES_ver2(_xx1,_yy1,_tile,_xref,_yref,_render_pass)
{
	switch(_tile.base_name)
		{
			case "solid_rocks":
			
				var _color_texture = tex_struct._tile_underground_solid_rocks1;
				//if _tile.climate[0] < control_array.climate[0]	{	_color_texture = tex_struct._tile_ground_peaks1_cold;	};
				//if _tile.climate[0] > control_array.climate[1]	{	_color_texture = tex_struct._tile_ground_peaks1_hot;	};
				
				//var _color_texture = tex_struct._tile_ground_peaks1;
				
				if _render_pass = 1
					{	
						exe_draw_tile_base_GLSL_ES_ver2(_xref,_yref,_tile.zref,_color_texture);
						//keep order!, extension base on already set shader from tile settings
						if control_array.draw_tile_extension > 0	{	exe_draw_tile_extensions_GLSL_ES_ver2(_tile,_xref,_yref);	};
					}
				if _render_pass = 2
					{
						texture_set_stage(shader_get_sampler_index(shd_map_base_pass2,"color_texture"),_color_texture);
						if control_array.draw_terrain_markers > 0	{	exe_draw_terrain_markers_GLSL_ES_ver2(_tile,_xref,_yref,1);	};
						if control_array.draw_terrain_items > 0		{	exe_draw_terrain_items_GLSL_ES_ver2(_tile,_xref,_yref);	};
						if control_array.draw_terrain_items > 0		{	exe_draw_terrain_continuos_GLSL_ES_ver2(_tile,_xref,_yref);	};
					}
				if _render_pass = 3
					{
						//temperature
						shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass3, "climate0"), _tile.climate[0]);
						shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass3, "mode"), 0.);
						matrix_set(matrix_world, matrix_build(_xref, _yref, _tile.zref, 0, 0, 0, 0.5, 0.5, 1));
						vertex_submit(vbuff_tile_64x64_flat, pr_trianglelist, -1);
						
						//humidity
						shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass3, "climate0"), _tile.climate[1]);
						shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass3, "mode"), 1.);
						matrix_set(matrix_world, matrix_build(_xref+control_array.tile_size/2, _yref, _tile.zref, 0, 0, 0, 0.5, 0.5, 1));
						vertex_submit(vbuff_tile_64x64_flat, pr_trianglelist, -1);
					}
				if _render_pass = 4
					{
						if control_array.draw_terrain_cover > 0		{	exe_draw_terrain_cover_GLSL_ES_ver2(_tile,_xref,_yref);	};
					}
				break;
			case "soft_rocks":
				var _color_texture = tex_struct._tile_underground_soft_rocks1;
				//if _tile.climate[0] < control_array.climate[0]	{	_color_texture = tex_struct._tile_ground_highland1_cold;	};
				//if _tile.climate[0] > control_array.climate[1]	{	_color_texture = tex_struct._tile_ground_highland1_hot;		};
				
				if _render_pass = 1
					{
						exe_draw_tile_base_GLSL_ES_ver2(_xref,_yref,_tile.zref,_color_texture);
								
						matrix_set(matrix_world, matrix_build(_xref, _yref, _tile.zref, 0, 0, 0, 1, 1, 1));
						vertex_submit(vbuff_tile, pr_trianglelist, -1);	
				
						if control_array.draw_tile_extension > 0	{	exe_draw_tile_extensions_GLSL_ES_ver2(_tile,_xref,_yref);	};
					}
				if _render_pass = 2
					{
						texture_set_stage(shader_get_sampler_index(shd_map_base_pass2,"color_texture"),_color_texture);
						if control_array.draw_terrain_markers > 0	{	exe_draw_terrain_markers_GLSL_ES_ver2(_tile,_xref,_yref,1);	};
						if control_array.draw_terrain_items > 0		{	exe_draw_terrain_items_GLSL_ES_ver2(_tile,_xref,_yref);	};
						if control_array.draw_terrain_items > 0		{	exe_draw_terrain_continuos_GLSL_ES_ver2(_tile,_xref,_yref);	};
					}
				if _render_pass = 3
					{
						//temperature
						shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass3, "climate0"), _tile.climate[0]);
						shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass3, "mode"), 0.);
						matrix_set(matrix_world, matrix_build(_xref, _yref, _tile.zref, 0, 0, 0, 0.5, 0.5, 1));
						vertex_submit(vbuff_tile_64x64_flat, pr_trianglelist, -1);
						
						//humidity
						shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass3, "climate0"), _tile.climate[1]);
						shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass3, "mode"), 1.);
						matrix_set(matrix_world, matrix_build(_xref+control_array.tile_size/2, _yref, _tile.zref, 0, 0, 0, 0.5, 0.5, 1));
						vertex_submit(vbuff_tile_64x64_flat, pr_trianglelist, -1);
					}
				if _render_pass = 4
					{
						if control_array.draw_terrain_cover > 0		{	exe_draw_terrain_cover_GLSL_ES_ver2(_tile,_xref,_yref);	};
					}
				break;
			case "soft_earth":
				var _color_texture = tex_struct._tile_underground_soft_earth1;
				//if _tile.climate[0] < control_array.climate[0]	{	_color_texture = tex_struct._tile_ground_lowland1_cold;		};
				//if _tile.climate[0] > control_array.climate[1]	{	_color_texture = tex_struct._tile_ground_lowland1_hot;		};
				
				if _render_pass = 1
					{
						exe_draw_tile_base_GLSL_ES_ver2(_xref,_yref,_tile.zref,_color_texture);
								
						matrix_set(matrix_world, matrix_build(_xref, _yref, _tile.zref, 0, 0, 0, 1, 1, 1));
						vertex_submit(vbuff_tile, pr_trianglelist, -1);	
				
						if control_array.draw_tile_extension > 0	{	exe_draw_tile_extensions_GLSL_ES_ver2(_tile,_xref,_yref);	};
					}
				if _render_pass = 2
					{
						texture_set_stage(shader_get_sampler_index(shd_map_base_pass2,"color_texture"),_color_texture);
						if control_array.draw_terrain_markers > 0	{	exe_draw_terrain_markers_GLSL_ES_ver2(_tile,_xref,_yref,1);	};
						if control_array.draw_terrain_items > 0		{	exe_draw_terrain_items_GLSL_ES_ver2(_tile,_xref,_yref);	};
						if control_array.draw_terrain_items > 0		{	exe_draw_terrain_continuos_GLSL_ES_ver2(_tile,_xref,_yref);	};
					}
				if _render_pass = 3
					{
						//temperature
						shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass3, "climate0"), _tile.climate[0]);
						shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass3, "mode"), 0.);
						matrix_set(matrix_world, matrix_build(_xref, _yref, _tile.zref, 0, 0, 0, 0.5, 0.5, 1));
						vertex_submit(vbuff_tile_64x64_flat, pr_trianglelist, -1);
						
						//humidity
						shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass3, "climate0"), _tile.climate[1]);
						shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass3, "mode"), 1.);
						matrix_set(matrix_world, matrix_build(_xref+control_array.tile_size/2, _yref, _tile.zref, 0, 0, 0, 0.5, 0.5, 1));
						vertex_submit(vbuff_tile_64x64_flat, pr_trianglelist, -1);
					}
				if _render_pass = 4
					{
						if control_array.draw_terrain_cover > 0		{	exe_draw_terrain_cover_GLSL_ES_ver2(_tile,_xref,_yref);	};
					}
				break;
			case "water_caves":
				var _color_texture = tex_struct._tile_underground_water_caves1;
				//if _tile.climate[0] < control_array.climate[0]	{	_color_texture = tex_struct._tile_ground_lowland1_cold;		};
				//if _tile.climate[0] > control_array.climate[1]	{	_color_texture = tex_struct._tile_ground_lowland1_hot;		};
				
				if _render_pass = 1
					{
						exe_draw_tile_base_GLSL_ES_ver2(_xref,_yref,_tile.zref,_color_texture);
								
						matrix_set(matrix_world, matrix_build(_xref, _yref, _tile.zref, 0, 0, 0, 1, 1, 1));
						vertex_submit(vbuff_tile, pr_trianglelist, -1);	
				
						if control_array.draw_tile_extension > 0	{	exe_draw_tile_extensions_GLSL_ES_ver2(_tile,_xref,_yref);	};
					}
				if _render_pass = 2
					{
						texture_set_stage(shader_get_sampler_index(shd_map_base_pass2,"color_texture"),_color_texture);
						if control_array.draw_terrain_markers > 0	{	exe_draw_terrain_markers_GLSL_ES_ver2(_tile,_xref,_yref,1);
						if control_array.draw_terrain_items > 0		{	exe_draw_terrain_items_GLSL_ES_ver2(_tile,_xref,_yref);	};	};
						if control_array.draw_terrain_items > 0		{	exe_draw_terrain_continuos_GLSL_ES_ver2(_tile,_xref,_yref);	};
					}
				if _render_pass = 3
					{
						//temperature
						shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass3, "climate0"), _tile.climate[0]);
						shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass3, "mode"), 0.);
						matrix_set(matrix_world, matrix_build(_xref, _yref, _tile.zref, 0, 0, 0, 0.5, 0.5, 1));
						vertex_submit(vbuff_tile_64x64_flat, pr_trianglelist, -1);
						
						//humidity
						shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass3, "climate0"), _tile.climate[1]);
						shader_set_uniform_f(	shader_get_uniform(shd_map_base_pass3, "mode"), 1.);
						matrix_set(matrix_world, matrix_build(_xref+control_array.tile_size/2, _yref, _tile.zref, 0, 0, 0, 0.5, 0.5, 1));
						vertex_submit(vbuff_tile_64x64_flat, pr_trianglelist, -1);
					}
				if _render_pass = 4
					{
						if control_array.draw_terrain_cover > 0		{	exe_draw_terrain_cover_GLSL_ES_ver2(_tile,_xref,_yref);	};
					}
				break;
			case "none":
				var _color_texture = tex_struct._tile_underground_none1;
				if _render_pass = 1
					{
						exe_draw_tile_base_GLSL_ES_ver2(_xref,_yref,_tile.zref,_color_texture);
								
						matrix_set(matrix_world, matrix_build(_xref, _yref, _tile.zref, 0, 0, 0, 1, 1, 1));
						vertex_submit(vbuff_tile, pr_trianglelist, -1);	
				
						if control_array.draw_tile_extension > 0	{	exe_draw_tile_extensions_GLSL_ES_ver2(_tile,_xref,_yref);	};
					}
				break;
		}
}