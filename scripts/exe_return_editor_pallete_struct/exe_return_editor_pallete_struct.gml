function exe_return_editor_pallete_struct()
{
	var _struct =
		{
			menu_xsize : 6,	menu_ysize : 4,
			xref : dgw/(tile_base_size*icon_scale) - 6.5,	
			yref : dgh/(tile_base_size*icon_scale) - 4.5,
			minimised : 0,
			palete_choice : "terrain",
			palete_range : ["settings","continuos","terrain","descriptors","climate","generators"],
			chosen_paint : [],
			brush_size : 0,
		}
	return(_struct);
}