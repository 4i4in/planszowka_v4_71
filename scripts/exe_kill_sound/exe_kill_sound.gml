function exe_kill_sound(_target)
{
	for(var _ii = array_length(sound.loops)-1; _ii > -1; _ii--)
		{
			var _name = sound.loops[_ii][0];
			var _id = sound.loops[_ii][1];
			
			if _name == _target
				{
					audio_stop_sound(_id);
					array_delete(sound.loops,_ii,1);
				}
		}
		
	if _target == "all"
		{
			audio_stop_all();
			sound.loops = [];
		}
}