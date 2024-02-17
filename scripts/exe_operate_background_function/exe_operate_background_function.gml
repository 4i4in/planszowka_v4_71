function exe_operate_background_function()
{
	if deleyed_function.func == ""
		{
			switch(background_function.func)
				{
					case "exe_background_map_tile_render":	exe_background_map_tile_render();
						break;
					case "exe_background_render_specific_tile":	exe_background_render_specific_tile();
						break;
					case "exe_background_refresh_screen":	exe_background_refresh_screen();
						break;
				};
			
			if array_length(background_function.delayed) > 50
				{
					mouse_struct.mtime = 60;
					mouse_info.txt = "wait a second!\nI'm bussy!\nmouse cooled down!\nfor : " + string(mouse_struct.mtime)  +"\n left click to check mouse;";
					mouse_info.mx = mouse_struct.mx;	mouse_info.my = mouse_struct.my;
				};		
		};
}