function exe_editor_palete_push_buttons_settings(_this_menu,_yref)
{
	//resize_menu
	menus.editor_palete.menu_xsize = 5;	menus.editor_palete.menu_ysize = 3.5;
	
	var _menu_xsize = menus.editor_palete.menu_xsize;	var _menu_ysize = menus.editor_palete.menu_ysize;
	var _xref = menus.editor_palete.xref;	
	var _tsize = control_array.tile_size;
	var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
	

	
	return(_this_menu);
}