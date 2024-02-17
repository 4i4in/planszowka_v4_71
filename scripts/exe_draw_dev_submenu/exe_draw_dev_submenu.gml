function exe_draw_dev_submenu()
{
	switch(dev_submenu)
		{
			case 1:
				var _txt = 
					"\n fps : " + string(fps_real)	+	" | target : " + string (fps) +"\n camx : " + string(control_array.camx)	+	" | camy : " + string (control_array.camy) +
					"\n xfrom : " + string(control_array.map_cam_x_from)	+	" | xto : " + string (control_array.map_cam_x_to) +
					"\n yfrom : " + string(control_array.map_cam_y_from)	+	" | yto : " + string (control_array.map_cam_y_to) +
					"\n control_array.map_cam_x_from : " + string(control_array.map_cam_x_from) +
					"\n control_array.map_cam_x_to : " + string(control_array.map_cam_x_to) +
					"\n control_array.map_cam_y_from : " + string(control_array.map_cam_y_from) +
					"\n control_array.map_cam_y_to : " + string(control_array.map_cam_y_to) +
					"\n dgw : " + string(dgw) + " | dgh : " + string(dgh) + 
					"\n current_menu : " + string(control_array.current_menu) + 
					"\n background_function : " + string(background_function.func) + " | x : " + string(background_function.pos_x) + " | y : " + string(background_function.pos_y)
					;
					
					
				draw_set_halign(fa_left);
				draw_set_valign(fa_top);
				draw_set_font(fnt_arial);
				
				var _text_w = string_width(_txt);
				var _text_h = string_height(_txt);
				
				if !surface_exists(main_surface)	{	main_surface = surface_create(dgw,dgh);	}
				surface_set_target(main_surface);
				
				draw_set_color(c_dkgray);
				draw_set_alpha(0.5);
				draw_rectangle(0,0,_text_w,_text_h,0);
				draw_set_color(c_white);
				draw_set_alpha(1);
				draw_text(0,0,string(_txt));
				surface_reset_target();
				break;
		}
}