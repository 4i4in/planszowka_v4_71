function exe_create_display_control_menu00()
{
	var _this_menu = [];
	
	var _menu_xsize = 0.5;	var _menu_ysize = 0.5;
	var _xref = dgw/(tile_base_size*icon_scale)-_menu_xsize;	var _yref = 1;
	
	var _tsize = control_array.tile_size;
	
	var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
	array_push(_this_menu,_restricted);
	
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "<<"; var _lclick = "exe_turn_display_menu"; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "switch display_menu_on";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);

	return(_this_menu);
}