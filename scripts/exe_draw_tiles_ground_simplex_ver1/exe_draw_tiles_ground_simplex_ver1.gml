function exe_draw_tiles_ground_simplex_ver1(_xx1,_yy1,_tile,_xref,_yref)
{
	switch(_tile.base_name)
		{
			case "peaks":
				if _tile.climate[0] < control_array.climate[0]		{	draw_sprite_ext(simplex_peaks,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);		}
				else if _tile.climate[0] > control_array.climate[1]	{	draw_sprite_ext(simplex_peaks_hot,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);		}
				else												{	draw_sprite_ext(simplex_peaks_cold,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);	}
				break;
			case "highland":
				if _tile.climate[0] < control_array.climate[0]		{	draw_sprite_ext(simplex_highland,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);	}
				else if _tile.climate[0] > control_array.climate[1]	{	draw_sprite_ext(simplex_highland_hot,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);	}
				else												{	draw_sprite_ext(simplex_highland_cold,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);	}
				break;
			case "lowland":
				if _tile.climate[0] < control_array.climate[0]		{	draw_sprite_ext(simplex_lowland,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);	}
				else if _tile.climate[0] > control_array.climate[1]	{	draw_sprite_ext(simplex_lowland_hot,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);	}
				else												{	draw_sprite_ext(simplex_lowland_cold,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);	}
				break;
			case "shallow_water":
				if _tile.climate[0] < control_array.climate[0]		{	draw_sprite_ext(simplex_shallow_water,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);	}
				else if _tile.climate[0] > control_array.climate[1]	{	draw_sprite_ext(simplex_shallow_water_hot,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);	}
				else												{	draw_sprite_ext(simplex_shallow_water_cold,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);	}
				break;
			case "deep_water":
				if _tile.climate[0] < control_array.climate[0]		{	draw_sprite_ext(simplex_deep_water,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);	}
				else if _tile.climate[0] > control_array.climate[1]	{	draw_sprite_ext(simplex_deep_water_hot,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);	}
				else												{	draw_sprite_ext(simplex_deep_water_cold,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);	}
				break;
			case "ocean_rifts":
				if _tile.climate[0] < control_array.climate[0]		{	draw_sprite_ext(simplex_ocean_rifts,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);	}
				else if _tile.climate[0] > control_array.climate[1]	{	draw_sprite_ext(simplex_ocean_rifts_hot,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);	}
				else												{	draw_sprite_ext(simplex_ocean_rifts_cold,0,_xref,_yref,icon_scale,icon_scale,0,-1,1.);	}
				break;
		}
	draw_sprite_ext(wind_arrow_01,0,_xref + control_array.tile_size/2,_yref+control_array.tile_size/2,_tile.wind[1],_tile.wind[1],_tile.wind[0],-1,1);
}