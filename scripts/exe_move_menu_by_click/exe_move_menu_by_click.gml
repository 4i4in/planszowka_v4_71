function exe_move_menu_by_click(_carry)
{
	switch(_carry[2])
		{
			case "menus.editor_palete":
				menus.editor_palete.xref += (mouse_struct.mx - _carry[0])/control_array.tile_size;
				menus.editor_palete.yref += (mouse_struct.my - _carry[1])/control_array.tile_size;
			
				mouse_struct.func_carry = ["move_menu_by_click",variable_clone(game_time),mouse_struct.mx,mouse_struct.my,variable_clone(_carry[2])];
				break;
			case "menus.minimap":
				menus.minimap.xref += (mouse_struct.mx - _carry[0])/control_array.tile_size;
				menus.minimap.yref += (mouse_struct.my - _carry[1])/control_array.tile_size;
			
				mouse_struct.func_carry = ["move_menu_by_click",variable_clone(game_time),mouse_struct.mx,mouse_struct.my,variable_clone(_carry[2])];
				break;
		}
	mouse_struct.mtime = -1;
	reset_current_menu_array = 1;
}