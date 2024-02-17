function exe_end_background_function()
{
	background_function.func = "";
	background_function.carry = [];
	background_function.txt = "";
	background_function.pos_x = -1;
	background_function.pos_y = -1;
	
	if array_length(background_function.delayed) > 0
		{
			var _arr1 = background_function.delayed[0];
			background_function.func = variable_clone(_arr1[0]);
			background_function.carry = variable_clone(_arr1[1]);
			background_function.txt = variable_clone(_arr1[2]);
			background_function.pos_x = variable_clone(_arr1[3]);
			background_function.pos_y = variable_clone(_arr1[4]);
			
			array_delete(background_function.delayed,0,1);
		}
}