function exe_create_menu_templates()
{
	var _menu_templates = [];
	
	var _push_name = "main_menu";
	var _push_menu = exe_create_main_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "generate_map_menu";
	var _push_menu = exe_create_generate_map_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "minimap_menu";
	var _push_menu = exe_create_minimap_menu_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "editor_palete_menu";
	var _push_menu = exe_create_editor_palete_menu();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "dev_control_menu01";
	var _push_menu = exe_create_dev_control_menu01();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "dev_control_menu00";
	var _push_menu = exe_create_dev_control_menu00();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "display_control_menu01";
	var _push_menu = exe_create_display_control_menu01();
	array_push(_menu_templates,_push_name,_push_menu);
	
	var _push_name = "display_control_menu00";
	var _push_menu = exe_create_display_control_menu00();
	array_push(_menu_templates,_push_name,_push_menu);
	
	return(_menu_templates);
}