function exe_return_underdark_terrain(_num,_ground_tile)
{
	var _name = "";
	var _color = c_black;
	var _teritory_name = "";
	
	switch(_num)
		{
			case 0:
				_name = "magma";
				_color = map_generator.legal_underdark_colors[0];
				_teritory_name = "underdark " + string(_ground_tile.naming_1st_teritory);
				_zref = _ground_tile.zref;
				break;
			case 1:
				_name = "obsidian";
				_color = map_generator.legal_underdark_colors[1];
				_teritory_name = "underdark " + string(_ground_tile.naming_1st_teritory);
				_zref = _ground_tile.zref;
				break;
			case 2:
				_name = "granite";
				_color = map_generator.legal_underdark_colors[2];
				_teritory_name = "underdark " + string(_ground_tile.naming_1st_teritory);
				_zref = _ground_tile.zref;
				break;
			case 3:
				_name = "olivine";
				_color = map_generator.legal_underdark_colors[3];
				_teritory_name = "underdark " + string(_ground_tile.naming_1st_teritory);
				_zref = _ground_tile.zref;
				break;
			case 4:
				_name = "organogenic";
				_color = map_generator.legal_underdark_colors[4];
				_teritory_name = "underdark " + string(_ground_tile.base_name);
				_zref = _ground_tile.zref;
				break;
			case 5:
				_name = "metamorphic";
				_color = map_generator.legal_underdark_colors[5];
				_teritory_name = "underdark " + string(_ground_tile.naming_1st_teritory);
				_zref = _ground_tile.zref;
				break;
			case 6:
				_name = "chemic";
				_color = map_generator.legal_underdark_colors[6];
				_teritory_name = "underdark " + string(_ground_tile.naming_1st_teritory);
				_zref = _ground_tile.zref;
				break;
		}
	
	var _terrain = [_name,_color,_teritory_name];
	return(_terrain);
}