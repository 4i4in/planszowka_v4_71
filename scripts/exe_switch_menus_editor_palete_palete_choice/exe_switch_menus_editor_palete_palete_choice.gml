function exe_switch_menus_editor_palete_palete_choice(_carry)
{
	var _current_position = menus.editor_palete.palete_choice;
	var _cp_num = -1;
	for(var _ii = 0; _ii < array_length(menus.editor_palete.palete_range); _ii++)
		{
			if 	menus.editor_palete.palete_range[_ii] == _current_position	
				{
					_cp_num = _ii;
					break;
				};
		}
	_cp_num += _carry[0];
	if _cp_num < 0	{	_cp_num =  array_length(menus.editor_palete.palete_range)-1;	};
	if _cp_num > array_length(menus.editor_palete.palete_range)-1	{	_cp_num =  0;	};
	
	menus.editor_palete.palete_choice = variable_clone(menus.editor_palete.palete_range[_cp_num]);
	
	mouse_struct.func_carry = ["refresh_menu_again",variable_clone(game_time),1];
	
	reset_current_menu_array = 1;
}