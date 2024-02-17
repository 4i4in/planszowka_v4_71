function exe_choose_random_end_remove(_list)
{
	var _max_rnd = array_length(_list)-1;
	var _random = irandom(_max_rnd);
	var _choosen = _list[_random];
	_choosen =  variable_clone(_choosen);
	_choosen = string(_choosen);
	array_delete(_list,_random,1);
	var _push = [_list,_choosen];
	return(_push);
}