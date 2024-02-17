function exe_throw_background_function(_func,_carry,_txt,_posx,_posy)
{
	if background_function.func = ""
		{
			background_function.func = _func;
			background_function.carry = _carry;
			background_function.txt = _txt;
			background_function.pos_x = _posx;
			background_function.pos_y = _posy;
		}
	else
		{
			//throw to background_function.delayed
			var _temp_array = [_func,_carry,_txt,_posx,_posy];
			array_push(background_function.delayed,_temp_array);
		}
}