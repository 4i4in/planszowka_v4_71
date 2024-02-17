function exe_create_generate_map_menu()
{
	var _this_menu = [];
	
	var _menu_xsize = floor(dgw/(tile_base_size*icon_scale))-1;	var _menu_ysize = floor(dgh/(tile_base_size*icon_scale))-1;
	var _xref = 0.5;	var _yref = 0.5;
	
	var _tsize = control_array.tile_size;
	
	var _restricted = [_xref,_yref,_xref + _menu_xsize,_yref + _menu_ysize];
	array_push(_this_menu,_restricted);
	
	var _map_button_scale = (map_generator.map_x/_tsize) * map_generator.show_scale;
	
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "Map Generator"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "map editor destription";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [4,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "Map name : " + string(map_generator.map_name); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "edit map name";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [4,1];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_64x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "Heightmap generator : \n" + string(map_generator.current_generator_step_0); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "current generator";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [4,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "Generete new map"; var _lclick = "exe_goto_generate_map_menu"; var _rclick = "show_rclick_info"; var _carry = ["reset_all"];	var _info = "lclick to generate completly new map;";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	if array_length(game_map[$ control_array.map_current_name_level]) > 0
		{
			_xref += _button_size[0];
			var _button_size = [4,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "Use map in editor"; var _lclick = "exe_goto_editor"; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "lclick to use this map in manual editor;";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
		}
	
	//rnd seed button start
	_xref = _restricted[0];
	_yref += _button_size[1];
	var _button_size = [4,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "rnd seed : " + string(map_generator.rnd_seed); var _lclick = "exe_copy_seed_to_clipboard"; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "show rnd seed \n lclick copy seed to clipboard";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "RND new seed"; var _lclick = "exe_map_generator_new_random_seed"; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "roll new seed";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	//rnd seed button end
	
	
	_yref = 2;
	var _keep_yref = _yref;
	//show scale button start
	_xref = _restricted[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "min"; var _lclick = "exe_map_generator_show_scale_change"; var _rclick = "show_rclick_info"; var _carry = ["min"];	var _info = "show scale -";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "<<"; var _lclick = "exe_map_generator_show_scale_change"; var _rclick = "show_rclick_info"; var _carry = [-1];	var _info = "show scale -";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "show scale : " + string(map_generator.show_scale); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "preview grid by *px";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ">>"; var _lclick = "exe_map_generator_show_scale_change"; var _rclick = "show_rclick_info"; var _carry = [1];	var _info = "show scale +";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "max"; var _lclick = "exe_map_generator_show_scale_change"; var _rclick = "show_rclick_info"; var _carry = ["max"];	var _info = "show scale +";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	//show scale button end
	
	
	//map x button start
	_xref = _restricted[0];
	_yref += _button_size[1];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "min"; var _lclick = "exe_map_generator_map_size_change"; var _rclick = "show_rclick_info"; var _carry = ["min",0];	var _info = "map_x -";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "<<"; var _lclick = "exe_map_generator_map_size_change"; var _rclick = "show_rclick_info"; var _carry = [-1,0];	var _info = "map_x -";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "map x size : " + string(map_generator.map_x); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "map size map_x";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ">>"; var _lclick = "exe_map_generator_map_size_change"; var _rclick = "show_rclick_info"; var _carry = [1,0];	var _info = "map_x +";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "max"; var _lclick = "exe_map_generator_map_size_change"; var _rclick = "show_rclick_info"; var _carry = ["max",0];	var _info = "map_x +";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	//map x button end
	
	
	//map y button start
	_xref = _restricted[0];
	_yref += _button_size[1];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "min"; var _lclick = "exe_map_generator_map_size_change"; var _rclick = "show_rclick_info"; var _carry = [0,"min"];	var _info = "map_x -";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "<<"; var _lclick = "exe_map_generator_map_size_change"; var _rclick = "show_rclick_info"; var _carry = [0,-1];	var _info = "map_x -";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "map y size : " + string(map_generator.map_y); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "map size map_y";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ">>"; var _lclick = "exe_map_generator_map_size_change"; var _rclick = "show_rclick_info"; var _carry = [0,1];	var _info = "map_y +";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "max"; var _lclick = "exe_map_generator_map_size_change"; var _rclick = "show_rclick_info"; var _carry = [0,"max"];	var _info = "map_y +";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	//map y button end
	
	if map_generator.current_generator_step_0 == "exe_voronoi_map_gen_01"
		{
			//voronoi points button start
			_xref = _restricted[0];
			_yref += _button_size[1];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "min"; var _lclick = "exe_map_generator_voronoi_points_change"; var _rclick = "show_rclick_info"; var _carry = ["min"];	var _info = "voronoi points min";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "<<"; var _lclick = "exe_map_generator_voronoi_points_change"; var _rclick = "show_rclick_info"; var _carry = [-1];	var _info = "voronoi points -";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [2,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "voronoi cells : " + string(map_generator.voronoi_points); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "voronoi points ammount";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ">>"; var _lclick = "exe_map_generator_voronoi_points_change"; var _rclick = "show_rclick_info"; var _carry = [1];	var _info = "voronoi points +";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "max"; var _lclick = "exe_map_generator_voronoi_points_change"; var _rclick = "show_rclick_info"; var _carry = ["max"];	var _info = "voronoi points max";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			//voronoi points button end
		}
		
	//water level button start
	_xref = _restricted[0];
	_yref += _button_size[1];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "min"; var _lclick = "exe_map_generator_mapheight_mean_change"; var _rclick = "show_rclick_info"; var _carry = ["min"];	var _info = "mapheight mean min";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "<<"; var _lclick = "exe_map_generator_mapheight_mean_change"; var _rclick = "show_rclick_info"; var _carry = [-1];	var _info = "mapheight mean -";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "water level : " + string(map_generator.mapheight_mean); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "mapheight mean as water level";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ">>"; var _lclick = "exe_map_generator_mapheight_mean_change"; var _rclick = "show_rclick_info"; var _carry = [1];	var _info = "mapheight mean +";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "max"; var _lclick = "exe_map_generator_mapheight_mean_change"; var _rclick = "show_rclick_info"; var _carry = ["max"];	var _info = "mapheight mean max";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	//water level button end
	
	_xref = _restricted[0];
	_yref += _button_size[1];
	var _button_size = [4,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "water cover : " + string(map_generator.water_cover*100) + " %"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "water cover %";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	//expected water cover button start
	_xref = _restricted[0];
	_yref += _button_size[1];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "min"; var _lclick = "exe_map_generator_expected_water_cover_change"; var _rclick = "show_rclick_info"; var _carry = ["min"];	var _info = "expected water cover min";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "<<"; var _lclick = "exe_map_generator_expected_water_cover_change"; var _rclick = "show_rclick_info"; var _carry = [-1];	var _info = "expected water cover -";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "expected : " + string(map_generator.expected_water_cover*100) + " %"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "expected water cover";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ">>"; var _lclick = "exe_map_generator_expected_water_cover_change"; var _rclick = "show_rclick_info"; var _carry = [1];	var _info = "expected water coverl +";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "max"; var _lclick = "exe_map_generator_expected_water_cover_change"; var _rclick = "show_rclick_info"; var _carry = ["max"];	var _info = "expected water cover max";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	//expected water cover button end
	
	//noise level button start
	_xref = _restricted[0];
	_yref += _button_size[1];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "min"; var _lclick = "exe_map_generator_noise_level_change"; var _rclick = "show_rclick_info"; var _carry = ["min"];	var _info = "noise level min";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "<<"; var _lclick = "exe_map_generator_noise_level_change"; var _rclick = "show_rclick_info"; var _carry = [-1];	var _info = "noise level -";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "noise level : " + string(map_generator.noise_level); var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "map size map_y";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ">>"; var _lclick = "exe_map_generator_noise_level_change"; var _rclick = "show_rclick_info"; var _carry = [1];	var _info = "noise level +";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [0.5,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "max"; var _lclick = "exe_map_generator_noise_level_change"; var _rclick = "show_rclick_info"; var _carry = ["max"];	var _info = "noise level max";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	//noise level button end
	
	_xref = 5; _yref = _keep_yref;
	for(var _ii = 0; _ii < array_length(map_generator.expected_cover); _ii+=2)
		{
			var _name = map_generator.expected_cover[_ii];
			var _expected_value = map_generator.expected_cover[_ii+1] * 100;
			if _expected_value < 0 {_expected_value = "free";};
			var _result_value = map_generator.result_cover[_ii+1] * 100;

			_xref = 5;
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "<<"; var _lclick = "exe_map_generator_expected_cover_change"; var _rclick = "show_rclick_info"; var _carry = [-1,_name];	var _info = string(_name) + " cover -";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [4,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = string(_name) + " cover : " + string(_result_value) + "% | " + string(_expected_value) + "%"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "map size map_y";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
	
			_xref += _button_size[0];
			var _button_size = [0.5,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x32_button";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = ">>"; var _lclick = "exe_map_generator_expected_cover_change"; var _rclick = "show_rclick_info"; var _carry = [1,_name];	var _info = string(_name) + " cover +";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_xref += _button_size[0];
			var _button_size = [1,0.5];
			var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
			var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
			var _pic = "_32x64_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
			var _btext = "free"; var _lclick = "exe_map_generator_expected_cover_change"; var _rclick = "show_rclick_info"; var _carry = ["free",_name];	var _info = string(_name) + " cover free";
			var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
			array_push(_this_menu,_button);
			
			_yref += _button_size[1];
		}
		
	_xref = 5.5;	
	_yref = _keep_yref + array_length(map_generator.expected_cover)/4;
	var _button_size = [4,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "water sum : " + string(map_generator.water_sum*100) + "%"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "water % after adapting part map";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref = 5.5;	
	_yref += 0.5;
	var _button_size = [4,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "Regenerate part map"; var _lclick = "exe_goto_generate_map_menu"; var _rclick = "show_rclick_info"; var _carry = ["reset_part_map"];	var _info = "lclick to displace terrain using current heigth map;";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref = 11.5; _yref = _keep_yref;
	var _button_size = [4,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x256_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "water source at : " + string((1-map_generator.set_water_source_at_humidity)*100)+ "%"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "humidity level to set water source;";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_yref++;
	_yref++;
	_yref++;
	_yref++;
	_yref++;
	//first map abstract height
	var _keep_yref = _yref;
	_xref = _restricted[0];
	var _keep_xref = _xref;
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "height map"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "descriptor";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "=>>"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "descriptor";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref = _keep_xref;
	_yref += _button_size[1];
	var _button_size = [_map_button_scale,_map_button_scale];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "srf_height_map";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "temporary_surface01";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	//second map ground
	_yref = _keep_yref;
	_xref += _button_size[0];
	var _keep_xref = _xref;
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "terrain map"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "descriptor";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "=>>"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "descriptor";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref = _keep_xref;
	_yref += _button_size[1];
	var _button_size = [_map_button_scale,_map_button_scale];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "srf_ground_minimap";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "temporary_surface02";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	//third map underground
	_yref = _keep_yref;
	_xref += _button_size[0];
	var _keep_xref = _xref;
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "underground map"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "descriptor";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "=>>"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "descriptor";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref = _keep_xref;
	_yref += _button_size[1];
	var _button_size = [_map_button_scale,_map_button_scale];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "srf_underground_minimap";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "temporary_surface02";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	
	//fourth map underdark
	_yref = _keep_yref;
	_xref += _button_size[0];
	var _keep_xref = _xref;
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "underdark map"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "descriptor";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref += _button_size[0];
	var _button_size = [2,0.5];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "_32x128_back";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = "=>>"; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "descriptor";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	_xref = _keep_xref;
	_yref += _button_size[1];
	var _button_size = [_map_button_scale,_map_button_scale];
	var _xx1 = floor(_xref * _tsize); var _yy1 = floor(_yref	* _tsize);
	var _xx2 = floor(_xx1+_button_size[0] * _tsize); var _yy2 = floor(_yy1+_button_size[1]	* _tsize);
	var _pic = "srf_underdark_minimap";	var _pic_mo = string(_pic) + "_mo";	var _mouse_over = 0;
	var _btext = ""; var _lclick = ""; var _rclick = "show_rclick_info"; var _carry = [];	var _info = "temporary_surface02";
	var _button = [_xx1,_yy1,_xx2,_yy2,_pic,_pic_mo,_mouse_over,_btext,_lclick,_rclick,_carry,_info];
	array_push(_this_menu,_button);
	
	
	return(_this_menu);
}