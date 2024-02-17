function exe_return_description(_descriptor_array,_target_name)
{
	var _found = 0;
	for(var _ii = 0; _ii < array_length(_descriptor_array); _ii++)
		{
			if _descriptor_array[_ii] == _target_name
				{
					_found = 1; break;
				}
		}
	return(_found);
}