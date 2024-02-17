function exe_return_new_tile_struct(_name,_color,_teritory_name,_zref,_climate,_wind)
{
	var _tile_struct = 
		{	
			base_name :				variable_clone(_name),
			terrain_description :	[],
			base_color :			variable_clone(_color),
			naming_1st_teritory :	variable_clone(_teritory_name),
			zref :					variable_clone(_zref),
			terrain_extensions :	[],
			terrain_markers : [],
			terrain_items : [],
			terrain_cover : [],
			terrain_continuos : 
								{
									rivers : [],
									roads : [],
								},
			climate : variable_clone(_climate),//temperature,
			wind : variable_clone(_wind),//direction,magnitude
			//render_pic : [no_render_tile],
			render_pic : {	
							base_pic : [no_render_tile],
							},
		}
	
	return(_tile_struct);
}