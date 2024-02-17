function exe_painting_rereder_throw(_carry,_counter0,_counter1,_counter2)
{
	switch(menus.editor_palete.brush_size)
		{
			case 0:
				switch(_counter0)
					{
						case 1:	case 3:	case 7:	case 9:
						exe_throw_background_function("exe_background_render_specific_tile",_carry,"background render",100,100);
						break;
					}
				break;
				
				
			case 1:
				var _throw = 0;
				switch(_counter1)
					{
						case 1:	_carry[0] += -1;	_carry[1] += -1;	_throw = 1;	break;
						case 2:	_carry[0] += -1;						_throw = 1;	break;
						case 3:	_carry[0] += -1;	_carry[1] += 1;		_throw = 1;	break;
						case 4:						_carry[1] += -1;	_throw = 1;	break;
						case 5:											_throw = 1;	break;
						case 6:						_carry[1] += 1;		_throw = 1;	break;
						case 7:	_carry[0] += 1;		_carry[1] += 1;		_throw = 1;	break;
						case 8:	_carry[0] += 1;							_throw = 1;	break;
						case 9:	_carry[0] += 1;		_carry[1] += 1;		_throw = 1;	break;
					}
				if _throw > 0	{	exe_throw_background_function("exe_background_render_specific_tile",_carry,"background render",100,100);	};
				break;
				
				
			case 2:
				var _throw = 0;
				switch(_counter1)
					{
						case 1:	_carry[0] += -1;	_carry[1] += -1;	_throw = 1;	break;
						case 2:	_carry[0] += -1;						_throw = 1;	break;
						
						case 4:	_carry[0] += -1;						_throw = 1;	break;
						case 5:	_carry[0] += -1;	_carry[1] += 1;		_throw = 1;	break;
						
						//================
						case 6:						_carry[1] += -1;	_throw = 1;	break;
						case 7:											_throw = 1;	break;
						
						case 9:											_throw = 1;	break;
						case 10:					_carry[1] += 1;		_throw = 1;	break;
						
						//================
						case 11:					_carry[1] += -1;	_throw = 1;	break;
						
						case 13:										_throw = 1;	break;
						
						case 15:					_carry[1] += 1;		_throw = 1;	break;
						
						//================
						case 16:					_carry[1] += -1;	_throw = 1;	break;
						case 17:										_throw = 1;	break;
						
						case 19:										_throw = 1;	break;
						case 20:					_carry[1] += 1;		_throw = 1;	break;
						
						//================
						case 21:	_carry[0] += 1;	_carry[1] += -1;	_throw = 1;	break;
						case 22:	_carry[0] += 1;						_throw = 1;	break;
						
						case 24:	_carry[0] += 1;						_throw = 1;	break;
						case 25:	_carry[0] += 1;	_carry[1] += 1;		_throw = 1;	break;
					}
				if _throw > 0	{	exe_throw_background_function("exe_background_render_specific_tile",_carry,"background render",100,100);	};
				break;
		}
}