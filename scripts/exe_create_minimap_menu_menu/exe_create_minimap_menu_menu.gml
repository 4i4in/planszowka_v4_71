function exe_create_minimap_menu_menu()
{
	var _this_menu = [];
	
	if menus.minimap.minimised > 0	//minimsed
		{
			var _menu_xsize = 5;	var _menu_ysize = 0.5;
			var _xref = menus.minimap.xref;	
			var _yref = menus.minimap.yref;
	
			var _tsize = control_array.tile_size;
			var _map_button_scale = (map_generator.map_x/_tsize) * map_generator.show_scale;
	
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.minimap"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "Minimap"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "minimap menu description";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = string(map_generator.map_name); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "map name";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_expand";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.minimap"];	var _info = "expand by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
		}
	else
		{
			var _menu_xsize = menus.minimap.menu_xsize;	var _menu_ysize = menus.minimap.menu_ysize;
			var _xref = menus.minimap.xref;	
			var _yref = menus.minimap.yref;
	
			var _tsize = control_array.tile_size;
			var _map_button_scale = (map_generator.map_x/_tsize) * map_generator.show_scale;
	
			var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
			array_push(_this_menu,_restricted);
	
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_move_menu";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_move_menu_by_click"; var _rclick = "show_rclick_info"; 
			var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2,"menus.minimap"];	
			var _info = "move menu by left click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "Minimap"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "minimap menu description";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = string(map_generator.map_name); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "map name";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_minimise";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ""; var _lclick = "exe_min_max_menu"; var _rclick = "show_rclick_info"; var _carry = ["menus.minimap"];	var _info = "minimise by click";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref = _restricted[0];
			_yref += _button_size[1];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "Level : " + string(control_array.map_current_name_level); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "map name";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "<<"; var _lclick = "exe_switch_control_array_map_current_name_level"; var _rclick = "show_rclick_info"; var _carry = [-1];	var _info = "map name";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ">>"; var _lclick = "exe_switch_control_array_map_current_name_level"; var _rclick = "show_rclick_info"; var _carry = [1];	var _info = "map name";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "s-"; var _lclick = "exe_map_generator_show_scale_change"; var _rclick = "show_rclick_info"; var _carry = [-1];	var _info = "minimap show scale -";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [1.,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = string(map_generator.show_scale); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "minimap scale";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "s+"; var _lclick = "exe_map_generator_show_scale_change"; var _rclick = "show_rclick_info"; var _carry = [1];	var _info = "minimap show scale +";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			switch(control_array.map_current_name_level)
				{
					case "air":
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [_map_button_scale,_map_button_scale];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "srf_air_minimap_moved";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = ""; var _lclick = "exe_move_cam_by_minimap_click"; var _rclick = "show_rclick_info"; 
						var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2];	;	
						var _info = "move by left click on minmap";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						break;
				
					case "ground":
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [_map_button_scale,_map_button_scale];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "srf_ground_minimap_moved";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = ""; var _lclick = "exe_move_cam_by_minimap_click"; var _rclick = "show_rclick_info"; 
						var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2];	;	
						var _info = "move by left click on minmap";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						break;
			
					case "underground":
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [_map_button_scale,_map_button_scale];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "srf_underground_minimap_moved";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = ""; var _lclick = "exe_move_cam_by_minimap_click"; var _rclick = "show_rclick_info"; 
						var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2];	;	
						var _info = "move by left click on minmap";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						break;
			
					case "underdark":
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [_map_button_scale,_map_button_scale];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "srf_underdark_minimap_moved";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = ""; var _lclick = "exe_move_cam_by_minimap_click"; var _rclick = "show_rclick_info"; 
						var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2];	;	
						var _info = "move by left click on minmap";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						break;
				
					case "underwater":
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [_map_button_scale,_map_button_scale];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "srf_underwater_minimap_moved";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = ""; var _lclick = "exe_move_cam_by_minimap_click"; var _rclick = "show_rclick_info"; 
						var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2];	;	
						var _info = "move by left click on minmap";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						break;
				
					case "water_deepths":
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [_map_button_scale,_map_button_scale];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "srf_water_deepths_minimap_moved";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = ""; var _lclick = "exe_move_cam_by_minimap_click"; var _rclick = "show_rclick_info"; 
						var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2];	;	
						var _info = "move by left click on minmap";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						break;
				
					case "water_abbys":
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [_map_button_scale,_map_button_scale];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "srf_water_abbys_minimap_moved";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = ""; var _lclick = "exe_move_cam_by_minimap_click"; var _rclick = "show_rclick_info"; 
						var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2];	;	
						var _info = "move by left click on minmap";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						break;
				
					case "fairyland":
						_xref = _restricted[0];
						_yref += _button_size[1];
						var _button_size = [_map_button_scale,_map_button_scale];
						var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
						var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
						var _pic = "srf_fairyland_minimap_moved";	var _pic_mo = string(_pic);	var _mouse_over = 0;
						var _btext = ""; var _lclick = "exe_move_cam_by_minimap_click"; var _rclick = "show_rclick_info"; 
						var _carry = [(_xx1+_xx2)/2,(_yy1+_yy2)/2];	;	
						var _info = "move by left click on minmap";
						var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
						array_push(_this_menu,_button);
						break;
				}
		}
	return(_this_menu);
}