function exe_throw_deleyed_func(_func,_carry,_txt,_delay,_info,_pic,_position)
{
	deleyed_function.delay = _delay;
	deleyed_function.func = _func;
	deleyed_function.carry = _carry;
	deleyed_function.txt = _info;
	deleyed_function.pic = _pic;
	
	switch(_position)
		{
			case "mouse":
				deleyed_function.pos_x = mouse_struct.mx;
				deleyed_function.pos_y = mouse_struct.my;
				break;
				
			case "center":
				deleyed_function.pos_x = floor(dgw/2);
				deleyed_function.pos_y = floor(dgh/2);
				break;
		}
	
}