function exe_editor_palete_push_buttons_climate(_this_menu,_yref)
{
	//resize_menu
	menus.editor_palete.menu_xsize = 6;	menus.editor_palete.menu_ysize = 3.5;
	
	var _menu_xsize = menus.editor_palete.menu_xsize;	var _menu_ysize = menus.editor_palete.menu_ysize;
	var _xref = menus.editor_palete.xref;	
	var _tsize = control_array.tile_size;
	var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
	
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_change_temperature_down_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["change_temperature",-0.05];	
	var _info = "click to paint lower temperature";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_change_temperature_up_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["change_temperature",0.05];	
	var _info = "click to paint higher temperature";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_change_humidity_down_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["change_humidity",-0.05];	
	var _info = "click to paint lower humidity";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_change_humidity_up_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["change_humidity",0.05];	
	var _info = "click to paint higher humidity";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_change_wind_strength_down_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["change_wind_strength",-0.1];	
	var _info = "click to paint lower wind strength";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x64_change_wind_strength_up_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["change_wind_strength",0.1];	
	var _info = "click to paint higher wind strength";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	return(_this_menu);
}