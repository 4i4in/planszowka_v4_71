function exe_map_generator_new_random_seed()
{
	randomise();
	var _value = random_get_seed();
	clipboard_set_text(_value);
	map_generator.rnd_seed = random_get_seed();
	
	mouse_info.txt = "new random seed : " + string(_value) + "\n coppied to clipboard;\n and set;";
	mouse_info.mx = mouse_struct.mx;	mouse_info.my = mouse_struct.my;
	reset_current_menu_array = 1;
}