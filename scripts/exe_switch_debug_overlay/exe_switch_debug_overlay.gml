function exe_switch_debug_overlay()
{
	debug_overlay += 0.5;
	if debug_overlay > 1.	{	debug_overlay = 0.;	};
	
	switch(debug_overlay)
		{
			case 0:
				show_debug_overlay(false);
				break;
			case 0.5:
				show_debug_overlay(true, true, 1, 0.5);
				break;
			case 1:
				show_debug_overlay(true, false, 1, 1);
				break;
		}
			
	reset_current_menu_array = 1;
	force_main_map_redraw = 1;
}