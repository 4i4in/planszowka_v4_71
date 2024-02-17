function exe_editor_palete_push_buttons_generators(_this_menu,_yref)
{
	//resize_menu
	menus.editor_palete.menu_xsize = 5;	menus.editor_palete.menu_ysize = 3.5;
	
	var _menu_xsize = menus.editor_palete.menu_xsize;	var _menu_ysize = menus.editor_palete.menu_ysize;
	var _xref = menus.editor_palete.xref;	
	var _tsize = control_array.tile_size;
	var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
	
	var _button_size = [4.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "rerender whole map, AGAIN!"; var _lclick = "exe_rerender_map"; var _rclick = "show_rclick_info"; 
	
	var _current_level = variable_clone(control_array.map_current_name_level);
	var _carry1 = [0,0,_current_level,0];
	var _carry = ["exe_background_map_tile_render",_carry1,"background render",100,100];
	var _info = "on click trigger rerendering whole, current map";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
			
	return(_this_menu);
}