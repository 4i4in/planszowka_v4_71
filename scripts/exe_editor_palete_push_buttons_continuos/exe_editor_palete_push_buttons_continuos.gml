function exe_editor_palete_push_buttons_continuos(_this_menu,_yref)
{
	//resize_menu
	menus.editor_palete.menu_xsize = 5;	menus.editor_palete.menu_ysize = 3;
	
	var _menu_xsize = menus.editor_palete.menu_xsize;	var _menu_ysize = menus.editor_palete.menu_ysize;
	var _xref = menus.editor_palete.xref;	
	var _tsize = control_array.tile_size;
	var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
	
	var _2nd_column = menus.editor_palete.xref + 2.5;
	var _2nd_column_top = _yref; 
	
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_add_river_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["add_river"];	
	var _info = "click to paint rivers";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_delete_river_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["delete_river"];	
	var _info = "click to delete rivers";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref = menus.editor_palete.xref;
	_yref += _button_size[1];
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_add_path_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["add_path"];	
	var _info = "click to paint path";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_delete_path_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["delete_path"];	
	var _info = "click to delete path";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	//second column
	
	_xref = _2nd_column;
	_yref = _2nd_column_top;
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_add_road_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["add_road"];	
	var _info = "click to paint road";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_delete_road_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["delete_road"];	
	var _info = "click to delete road";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref = _2nd_column;
	_yref += _button_size[1];
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_add_dwarfroad_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["add_dwarfroad"];	
	var _info = "click to paint dwarfroad";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_delete_dwarfroad_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["delete_dwarfroad"];	
	var _info = "click to delete dwarfroad";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	return(_this_menu);
}