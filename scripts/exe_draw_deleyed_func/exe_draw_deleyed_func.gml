function exe_draw_deleyed_func()
{
	if !surface_exists(main_surface)	{	main_surface = surface_create(dgw,dgh);	}
	
	surface_set_target(main_surface);
	
	switch(deleyed_function.pic)
		{
			case "_wait_ico":
				draw_sprite(_wait_ico,0,deleyed_function.pos_x,deleyed_function.pos_y);
				break;
		}
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_arial_outline);
	draw_text(deleyed_function.pos_x,deleyed_function.pos_y,deleyed_function.txt);
			
	surface_reset_target();
}