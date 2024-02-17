function exe_choose_paint(_carry)
{

	var _continue = 0;
	if array_length(menus.editor_palete.chosen_paint) > 0
		{
			if 	string(menus.editor_palete.chosen_paint) == string(_carry)
				{
					menus.editor_palete.chosen_paint = [];
					reset_current_menu_array = 1;
					exit;
				}
			else	{_continue = 1;};
		}
	else	{_continue = 1;};
	
	if _continue > 0
		{
			menus.editor_palete.chosen_paint = variable_clone(_carry);
		};
	
	//paints changing brush size
	switch(menus.editor_palete.chosen_paint[0])
		{
			case "add_river":	menus.editor_palete.brush_size = 0;	break;
		}
	
	reset_current_menu_array = 1;
}