function exe_paint_on_ground_map(_xx1,_yy1)
{
	//var _tile = game_map[$ control_array.map_current_name_level][_xx1][_yy1];
	//on ground
	var _construction_progress = 1.;
	var _destruction_done = 1.
	switch(menus.editor_palete.chosen_paint[0])
		{
			case "add_river":		exe_paint_add_river(_xx1,_yy1);	break;
			case "delete_river":	exe_paint_delete_river(_xx1,_yy1);	break;
			
			
			case "add_path":			exe_paint_add_continuos(_xx1,_yy1,"path",_construction_progress);	break;
			case "delete_path":			exe_paint_delete_continuos(_xx1,_yy1,"path",_destruction_done);	break;
			case "add_road":			exe_paint_add_continuos(_xx1,_yy1,"road",_construction_progress);	break;
			case "delete_road":			exe_paint_delete_continuos(_xx1,_yy1,"road",_destruction_done);	break;
			case "add_dwarfroad":		exe_paint_add_continuos(_xx1,_yy1,"dwarfroad",_construction_progress);	break;
			case "delete_dwarfroad":	exe_paint_delete_continuos(_xx1,_yy1,"dwarfroad",_destruction_done);	break;
			
			
			case "add_peaks":			exe_paint_add_ground_terrain(_xx1,_yy1,0);	break;
			case "add_highland":		exe_paint_add_ground_terrain(_xx1,_yy1,1);	break;
			case "add_lowland":			exe_paint_add_ground_terrain(_xx1,_yy1,2);	break;
			case "add_shallow_water":	exe_paint_add_ground_terrain(_xx1,_yy1,3);	break;
			case "add_deep_water":		exe_paint_add_ground_terrain(_xx1,_yy1,4);	break;
			case "add_ocean_rifts":		exe_paint_add_ground_terrain(_xx1,_yy1,5);	break;
			
			case "change_temperature":		exe_paint_change_temperature_ground(_xx1,_yy1,menus.editor_palete.chosen_paint[1]);	break;
			case "change_humidity":			exe_paint_change_humidity_ground(_xx1,_yy1,menus.editor_palete.chosen_paint[1]);	break;
			case "change_wind_strength":	exe_paint_change_wind_strength_ground(_xx1,_yy1,menus.editor_palete.chosen_paint[1]);	break;
			
			case "paint_descriptor":		exe_paint_descriptor_ground_terrain(_xx1,_yy1);	break;
		}
}