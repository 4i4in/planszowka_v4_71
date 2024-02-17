function exe_draw_dev_restricted_show()
{
	if click_restricted_show > 0
		{
			if !surface_exists(main_surface)	{	main_surface = surface_create(dgw,dgh);	}
	
			surface_set_target(main_surface);
			
			for(_ii = 0; _ii < array_length(click_restricted); _ii++)
				{
					var _this_restricted = click_restricted[_ii];
					var _xx1 = _this_restricted[0];
					var _yy1 = _this_restricted[1];
					var _xx2 = _this_restricted[2];
					var _yy2 = _this_restricted[3];
					
					draw_rectangle(_xx1,_yy1,_xx2,_yy2,1);
				}
		
			surface_reset_target();
		}
}