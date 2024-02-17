function exe_check_sqr_array(_array_to_check,_question)
{
	var _this_value = 0;
	switch(_question)
		{
			case "min":
				_this_value = 255;
				break;
				
			case "max":
				_this_value = 0;
				break;
				
			case "mean":
				_this_value = 0;
				var _counter = 0;
				break;
		}
		
	for(var _x1 = 0; _x1 < array_length(_array_to_check); _x1++)
		{
			var _sub_array =  _array_to_check[_x1];
			for(var _y1 = 0; _y1 < array_length(_sub_array); _y1++)
				{
					var _value_found = _array_to_check[_x1][_y1];
					
					switch(_question)
						{
							case "min":
								if _value_found < _this_value	{_this_value = _value_found;};
								break;
				
							case "max":
								if _value_found > _this_value	{_this_value = _value_found;};
								break;
								
							case "mean":
								_this_value += _value_found;
								_counter++;
								break;
						}
					
				}
		}
	if _question == "mean"	{	_this_value = round(_this_value/_counter);	};
	
	return(_this_value)
}