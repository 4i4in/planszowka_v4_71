function exe_switch_dev_show_depth_surface()
{
	control_array.dev_show_depth_surface += 0.25;
	if control_array.dev_show_depth_surface > 1	{	control_array.dev_show_depth_surface = 0;	};
	reset_current_menu_array = 1;
}