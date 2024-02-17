function exe_copy_seed_to_clipboard()
{
	var _value = random_get_seed();
	clipboard_set_text(_value);
	
	mouse_info.txt = "rnd seed : " + string(_value) + "\n coppied to clipboard;";
	mouse_info.mx = mouse_struct.mx;	mouse_info.my = mouse_struct.my;
}