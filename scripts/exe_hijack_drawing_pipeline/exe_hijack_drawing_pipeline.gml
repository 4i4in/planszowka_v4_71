function exe_hijack_drawing_pipeline(_direction)
{
	switch(_direction)
		{
			case 1:
				delete(render_drawing_hijack.keep0);
				render_drawing_hijack.keep0 = variable_clone(control_array);
				dgw = srf_mini;	
				dgh = srf_mini;
				break;
				
			case -1:
				control_array = variable_clone(render_drawing_hijack.keep0);
				delete(render_drawing_hijack.keep0);
				dgw = window_get_width();
				dgh = window_get_height();
				break;	
		}
}