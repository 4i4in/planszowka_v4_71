function exe_min_max_menu_by_click(_carry)
{
	switch(_carry[0])
		{
			case "menus.editor_palete":	menus.editor_palete.minimised = !menus.editor_palete.minimised;	break;
			case "menus.minimap":		menus.minimap.minimised = !menus.minimap.minimised;	break;
		}
	reset_current_menu_array = 1;
}