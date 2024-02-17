  draw_clear(c_black);
if surface_exists(main_surface)	{	draw_surface(main_surface,0,0);	};

if control_array.current_menu == "editor_map_menu"	&&	current_restricted < 0
	{
		var _xx1 = (mouse_struct.mx + control_array.camx) div control_array.tile_size;
		var _yy1 = (mouse_struct.my + control_array.camy) div control_array.tile_size;
		var _xref = _xx1 * control_array.tile_size - control_array.camx;
		var _yref = _yy1 * control_array.tile_size - control_array.camy;
		
		switch(menus.editor_palete.brush_size)
			{
				case 0:	draw_sprite_ext(brush_0,-1,_xref,_yref,4,4,0,-1,1.);break;
				case 1:	draw_sprite_ext(brush_1,-1,_xref,_yref,4,4,0,-1,1.);break;
				case 2:	draw_sprite_ext(brush_2,-1,_xref,_yref,4,4,0,-1,1.);break;
			};
	}
















