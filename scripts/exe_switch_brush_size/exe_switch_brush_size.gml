function exe_switch_brush_size()
{
	switch(menus.editor_palete.brush_size)
		{
			case 0:			menus.editor_palete.brush_size = 1;	break;
			case 1:			menus.editor_palete.brush_size = 2;	break;
			case 2:			menus.editor_palete.brush_size = 0;	break;
		};
	
	switch(menus.editor_palete.chosen_paint[0])
		{
			case "add_river":	menus.editor_palete.brush_size = 0;	break;
		}
		
	reset_current_menu_array = 1;
}