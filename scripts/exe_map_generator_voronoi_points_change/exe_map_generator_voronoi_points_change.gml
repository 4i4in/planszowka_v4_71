function exe_map_generator_voronoi_points_change(_carry)
{
	var _basenum = map_generator.map_x;
	if map_generator.map_y > _basenum	{	map_generator.map_y = _basenum;	};
	_basenum = ceil(sqrt(_basenum));
	
	var _min_pnum = _basenum;
	var _max_pnum = ceil(_basenum * _basenum/2);
	
	if _carry[0] == "min"	{	_carry[0] =	-_max_pnum;};
	if _carry[0] == "max"	{	_carry[0] =	+_max_pnum;};
	
	map_generator.voronoi_points += _carry[0];
	
	if map_generator.voronoi_points < _min_pnum	{	map_generator.voronoi_points = _min_pnum;	};
	if map_generator.voronoi_points > _max_pnum	{	map_generator.voronoi_points = _max_pnum;	};
	
	exe_speed_up_cooldown([3]);
	reset_current_menu_array = 1;
}