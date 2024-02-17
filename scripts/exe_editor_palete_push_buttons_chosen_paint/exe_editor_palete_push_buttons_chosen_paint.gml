function exe_editor_palete_push_buttons_chosen_paint(_this_menu)
{
	//resize_menu
	var _tsize = control_array.tile_size;
	
	var _xref = menus.editor_palete.xref +3;	
	var _yref = menus.editor_palete.yref;
	
	var _btext = "";
	var _pic = "_64x64_button";	
	switch(menus.editor_palete.chosen_paint[0])
		{
			case "add_river":			_pic = "_64x64_add_river_button_mo";	break;
			case "delete_river":		_pic = "_64x64_delete_river_button_mo";	break;
			case "add_path":			_pic = "_64x64_add_path_button_mo";	break;
			case "delete_path":			_pic = "_64x64_delete_path_button_mo";	break;
			case "add_road":			_pic = "_64x64_add_road_button_mo";	break;
			case "delete_road":			_pic = "_64x64_delete_road_button_mo";	break;
			case "add_dwarfroad":		_pic = "_64x64_add_dwarfroad_button_mo";	break;
			case "delete_dwarfroad":	_pic = "_64x64_delete_dwarfroad_button_mo";	break;
			
			case "add_peaks":		_pic = "_64x64_add_peaks_button_mo";	break;
			case "add_highland":	_pic = "_64x64_add_highland_button_mo";	break;
			case "add_lowland":		_pic = "_64x64_add_lowland_button_mo";	break;
			case "add_shallow_water":	_pic = "_64x64_add_shallow_water_button_mo";	break;
			case "add_deep_water":		_pic = "_64x64_add_deep_water_button_mo";	break;
			case "add_ocean_rifts":	_pic = "_64x64_add_ocean_rifts_button_mo";	break;
			
			case "change_temperature":	
				if menus.editor_palete.chosen_paint[1] > 0	{_pic = "_64x64_change_temperature_up_button_mo";}
				else										{_pic = "_64x64_change_temperature_down_button_mo";}
				break;
			case "change_humidity":	
				if menus.editor_palete.chosen_paint[1] > 0	{_pic = "_64x64_change_humidity_up_button_mo";}
				else										{_pic = "_64x64_change_humidity_down_button_mo";}
				break;
			case "change_wind_strength":	
				if menus.editor_palete.chosen_paint[1] > 0	{_pic = "_64x64_change_wind_strength_up_button_mo";}
				else										{_pic = "_64x64_change_wind_strength_down_button_mo";}
				break;
			
			case "paint_descriptor":	_btext = string(menus.editor_palete.chosen_paint[1]) + "\n" + string(menus.editor_palete.chosen_paint[2]);	break;
			
		}
	
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic_mo = string(_pic);	var _mouse_over = 0;
	var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = variable_clone(menus.editor_palete.chosen_paint);	
	//var _info = "current_paint\n" + string(menus.editor_palete.chosen_paint[0]) +"\n" + "left click to no paint;";
	var _info = "current_paint\n" + string(menus.editor_palete.chosen_paint) +"\n" + "left click to no paint;";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	
	_xref += _button_size[0];
	switch(menus.editor_palete.brush_size)
		{
			case 0:		_pic = "brush_0";	break;
			case 1:		_pic = "brush_1";	break;
			case 2:		_pic = "brush_2";	break;
		}
	var _button_size = [1.,1.];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic_mo = string(_pic);	var _mouse_over = 0;
	var _btext = string(menus.editor_palete.brush_size+1); var _lclick = "exe_switch_brush_size"; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "brush size;";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
			
	return(_this_menu);
}