function exe_create_main_menu()
{
	var _this_menu = [];
	
	var _menu_xsize = 4;	var _menu_ysize = 2;
	var _xref = floor((dgw/(tile_base_size*icon_scale))-_menu_xsize)/2;	var _yref = floor((dgh/(tile_base_size*icon_scale)) - _menu_ysize)/2;
	
	var _tsize = control_array.tile_size;
	
	var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
	array_push(_this_menu,_restricted);
	
	var _button_size = [4,1];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "Play game"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "click to play game";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_yref += _button_size[1];
	var _button_size = [4,1];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "Map Editor"; var _lclick = "exe_goto_generate_map_menu"; var _rclick = "show_rclick_info"; var _carry = ["reset"];	var _info = "click to edit map";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	
	//info
	_xref = 1;	_yref = 1;
	var _button_size = [4,1];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "Info\nnative resolution\n1920x1080 "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "helper";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_yref += _button_size[1];
	var _button_size = [4,1];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "tested on 1360x768\npress TAB to restart program\npress ESC to exit program "; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "helper";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	return(_this_menu);
}