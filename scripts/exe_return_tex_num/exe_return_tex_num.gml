function exe_return_tex_num(_case,_operator)
{
	var _tex_name = "";
	var _tex_num = "";
	switch(_case)
		{
			case "ocean_rifts":
			case 1: _tex_name = "ocean_rifts";	_tex_num = 1;
				break;	
				
			case "deep_water":
			case 2:	_tex_name = "deep_water";	_tex_num = 2;
				break;
				
			case "shallow_water":
			case 3: _tex_name = "shallow_water";	_tex_num = 3;
				break;	
			
			case "lowland":
			case 4: _tex_name = "lowland";	_tex_num = 4;
				break;	
				
			case "highland":
			case 5:	_tex_name = "highland";	_tex_num = 5;
				break;
				
			case "peaks":
			case 6: _tex_name = "peaks";	_tex_num = 6;
				break;	
		}
	if _operator == "name"	{return(_tex_name)};
	if _operator == "num"	{return(_tex_num)};
}