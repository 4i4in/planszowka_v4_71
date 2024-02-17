function exe_editor_palete_push_buttons_terrain(_this_menu,_yref)
{
	//resize_menu
	menus.editor_palete.menu_xsize = 6;	menus.editor_palete.menu_ysize = 2;
	
	var _menu_xsize = menus.editor_palete.menu_xsize;	var _menu_ysize = menus.editor_palete.menu_ysize;
	var _xref = menus.editor_palete.xref;	
	var _tsize = control_array.tile_size;
	var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
	
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_add_peaks_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["add_peaks"];	
	var _info = "click to paint peaks";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_add_highland_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["add_highland"];	
	var _info = "click to paint highland";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_add_lowland_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["add_lowland"];	
	var _info = "click to paint lowland";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_add_shallow_water_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["add_shallow_water"];	
	var _info = "click to paint shallow_water";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_add_deep_water_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["add_deep_water"];	
	var _info = "click to paint deep_water";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);

	_xref += _button_size[0];
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_add_ocean_rifts_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["add_ocean_rifts"];	
	var _info = "click to paint ocean_rifts";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
			
	return(_this_menu);
}