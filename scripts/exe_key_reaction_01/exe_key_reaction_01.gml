function exe_key_reaction_01()
{
	if keyboard_check(vk_escape)
		{
			game_end();
		}

	if keyboard_check(vk_tab)
		{
			game_restart();
		}
}