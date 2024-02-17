function exe_return_menu_buttons(_menu_name)
{
	var _return_buttons = [];
	for(var _ii = 0; _ii < array_length(menu_templates); _ii+=2)
		{
			if menu_templates[_ii] == _menu_name
				{
					_return_buttons = variable_clone(menu_templates[_ii+1]);
					array_delete(_return_buttons,0,1);
					break;
				}
		}
	return(_return_buttons);
}