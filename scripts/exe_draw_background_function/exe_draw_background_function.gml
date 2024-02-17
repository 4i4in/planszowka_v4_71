function exe_draw_background_function()
{
	if background_function.txt != ""
		{
			var _txt = string(background_function.txt);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			draw_set_font(fnt_arial);
				
			var _text_w = string_width(_txt);
			var _text_h = string_height(_txt);
				
			if !surface_exists(main_surface)	{	main_surface = surface_create(dgw,dgh);	}
			surface_set_target(main_surface);
				
			draw_set_color(c_dkgray);
			draw_set_alpha(0.5);
			draw_rectangle(background_function.pos_x,background_function.pos_y,
							background_function.pos_x+_text_w,	background_function.pos_y+_text_h,0);
			draw_set_color(c_white);
			draw_set_alpha(1);
			draw_text(background_function.pos_x,background_function.pos_y,string(_txt));
			surface_reset_target();
		}
}