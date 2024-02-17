function exe_editor_palete_push_buttons_descriptors(_this_menu,_yref)
{
	//resize_menu
	menus.editor_palete.menu_xsize = 6.5;	menus.editor_palete.menu_ysize = 11.;
	
	var _menu_xsize = menus.editor_palete.menu_xsize;	var _menu_ysize = menus.editor_palete.menu_ysize;
	var _xref = menus.editor_palete.xref;	
	var _tsize = control_array.tile_size;
	var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
	
	var _2nd_column = menus.editor_palete.xref + 3.5;
	var _2nd_column_top = _yref;


	//_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "avalanche"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","avalanche",1];	
	var _info = "click to add avalanche";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","avalanche",-1];	
	var _info = "click to remove avalanche";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "barren"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","barren",1];	
	var _info = "click to add barren";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","barren",-1];	
	var _info = "click to remove barren";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "barren\nrocks"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","barren_rocks",1];	
	var _info = "click to add barren_rocks";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","barren_rocks",-1];	
	var _info = "click to remove barren_rocks";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "broken\nice"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","broken_ice",1];	
	var _info = "click to add broken_ice";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","broken_ice",-1];	
	var _info = "click to remove broken_ice";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "clear\nskies"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","clear_skies",1];	
	var _info = "click to add clear_skies";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","clear_skies",-1];	
	var _info = "click to remove clear_skies";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "deep\nsnow cover"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","deep_snow_cover",1];	
	var _info = "click to add deep_snow_cover";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","deep_snow_cover",-1];	
	var _info = "click to remove deep_snow_cover";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "desert"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","desert",1];	
	var _info = "click to add desert";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","desert",-1];	
	var _info = "click to remove desert";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "dry\ngrass"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","dry_grass",1];	
	var _info = "click to add dry_grass";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","dry_grass",-1];	
	var _info = "click to remove dry_grass";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "dry\nwood"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","dry_wood",1];	
	var _info = "click to add dry_wood";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","dry_wood",-1];	
	var _info = "click to remove dry_wood";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "eroded\nrocks"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","eroded_rocks",1];	
	var _info = "click to add eroded_rocks";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","eroded_rocks",-1];	
	var _info = "click to remove eroded_rocks";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "extreeme\nclimbing"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","extreeme_climbing",1];	
	var _info = "click to add extreeme_climbing";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","extreeme_climbing",-1];	
	var _info = "click to remove extreeme_climbing";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "forest"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","forest",1];	
	var _info = "click to add forest";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","forest",-1];	
	var _info = "click to remove forest";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "fertile"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","fertile",1];	
	var _info = "click to add fertile";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","fertile",-1];	
	var _info = "click to remove fertile";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "freezing\nwinds"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","freezing_winds",1];	
	var _info = "click to add freezing_winds";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","freezing_winds",-1];	
	var _info = "click to remove freezing_winds";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "frozen\nsea plain"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","frozen_sea_plain",1];	
	var _info = "click to add frozen_sea_plain";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","frozen_sea_plain",-1];	
	var _info = "click to remove frozen_sea_plain";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "fog"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","fog",1];	
	var _info = "click to add fog";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","fog",-1];	
	var _info = "click to remove fog";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "fragile\nice formations"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","fragile_ice_formations",1];	
	var _info = "click to add fragile_ice_formations";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","fragile_ice_formations",-1];	
	var _info = "click to remove fragile_ice_formations";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "grass"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","grass",1];	
	var _info = "click to add grass";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","grass",-1];	
	var _info = "click to remove grass";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "glacier"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","glacier",1];	
	var _info = "click to add glacier";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","glacier",-1];	
	var _info = "click to remove glacier";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_yref += _button_size[1];
	_xref = menus.editor_palete.xref;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "hot\ncaves"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","hot_caves",1];	
	var _info = "click to add hot_caves";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","hot_caves",-1];	
	var _info = "click to remove hot_caves";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	
	//2nd column
	
	_yref = _2nd_column_top;
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "headwaters"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","headwaters",1];	
	var _info = "click to add headwaters";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","headwaters",-1];	
	var _info = "click to remove headwaters";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	

	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "icestorms"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","icestorms",1];	
	var _info = "click to add icestorms";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","icestorms",-1];	
	var _info = "click to remove icestorms";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);


	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "intense\nheat"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","intense_heat",1];	
	var _info = "click to add intense_heat";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","intense_heat",-1];	
	var _info = "click to remove intense_heat";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	

	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "jungle"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","jungle",1];	
	var _info = "click to add jungle";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","jungle",-1];	
	var _info = "click to remove jungle";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "natural\nice habitats"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","natural_ice_habitats",1];	
	var _info = "click to add natural_ice_habitats";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","natural_ice_habitats",-1];	
	var _info = "click to remove natural_ice_habitats";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "prairie"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","prairie",1];	
	var _info = "click to add prairie";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","prairie",-1];	
	var _info = "click to remove prairie";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "plankton"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","plankton",1];	
	var _info = "click to add plankton";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","plankton",-1];	
	var _info = "click to remove plankton";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "quiet"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","quiet",1];	
	var _info = "click to add quiet";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info";  
	var _carry = ["paint_descriptor","quiet",-1];	
	var _info = "click to remove quiet";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "rain"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","rain",1];	
	var _info = "click to add rain";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","rain",-1];	
	var _info = "click to remove rain";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
		
	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "storms"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","storms",1];	
	var _info = "click to add storms";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","storms",-1];	
	var _info = "click to remove storms";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
		
	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "strong\nwind"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","strong_wind",1];	
	var _info = "click to add strong_wind";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info";  
	var _carry = ["paint_descriptor","strong_wind",-1];	
	var _info = "click to remove strong_wind";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
		
	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "swmap"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","swmap",1];	
	var _info = "click to add swmap";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info";  
	var _carry = ["paint_descriptor","swmap",-1];	
	var _info = "click to remove swmap";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
		
	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "stable \ntemperatures"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","stable_temperatures",1];	
	var _info = "click to add stable_temperatures";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info";  
	var _carry = ["paint_descriptor","stable_temperatures",-1];	
	var _info = "click to remove stable_temperatures";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "sandstorms"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","sandstorms",1];	
	var _info = "click to add sandstorms";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","sandstorms",-1];	
	var _info = "click to remove sandstorms";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "steppe"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","steppe",1];	
	var _info = "click to add steppe";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","steppe",-1];	
	var _info = "click to remove steppe";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "savanna"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","savanna",1];	
	var _info = "click to add snowstorms";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info";  
	var _carry = ["paint_descriptor","savanna",-1];	
	var _info = "click to remove savanna";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "snowstorms"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","snowstorms",1];	
	var _info = "click to add snowstorms";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","snowstorms",-1];	
	var _info = "click to remove snowstorms";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "tundra"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","tundra",1];	
	var _info = "click to add tundra";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","tundra",-1];	
	var _info = "click to remove tundra";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "taiga"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","taiga",1];	
	var _info = "click to add taiga";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","taiga",-1];	
	var _info = "click to remove taiga";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	_yref += _button_size[1];
	_xref = _2nd_column;
	var _button_size = [2.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "wood"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","wood",1];	
	var _info = "click to add wood";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [1.,.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x64_back_red";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "remove"; var _lclick = "exe_choose_paint"; var _rclick = "show_rclick_info"; 
	var _carry = ["paint_descriptor","wood",-1];	
	var _info = "click to remove wood";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
			
	return(_this_menu);
}