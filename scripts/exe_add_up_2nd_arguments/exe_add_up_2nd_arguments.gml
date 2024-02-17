function exe_add_up_2nd_arguments(_arg_list)
{
	var _sum = 0;
	for(var _ii = 0; _ii < array_length(map_generator.result_cover); _ii+=2)
		{
			var _name1 = map_generator.result_cover[_ii];
			var _value = map_generator.result_cover[_ii+1];
			for(var _kk = 0; _kk < array_length(_arg_list); _kk++)
				{
					var _name2 = _arg_list[_kk];
					if _name1 == _name2	{_sum += _value;};
				}
		}
	return(_sum);
}