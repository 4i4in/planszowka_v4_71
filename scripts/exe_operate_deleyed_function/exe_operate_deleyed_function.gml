function exe_operate_deleyed_function()
{
	if deleyed_function.func != ""
		{
			if deleyed_function.delay < 1
				{
					switch(deleyed_function.func)
						{
							case "exe_goto_generate_map_menu":	exe_goto_generate_map_menu(deleyed_function.carry);	
								break;
							case "exe_goto_editor":	exe_goto_editor(deleyed_function.carry);	
								break;
						}
					exe_kill_sound("waiting");
					audio_play_sound(_sound_finish_01,0,0);
					deleyed_function.func = "";
				}
			else	
				{
					exe_draw_deleyed_func();
					var _id = audio_play_sound(_sound_waiting_01,0,1);
					var _push = ["waiting",_id];
					array_push(sound.loops,_push);
					deleyed_function.delay--;
				};
		}
}