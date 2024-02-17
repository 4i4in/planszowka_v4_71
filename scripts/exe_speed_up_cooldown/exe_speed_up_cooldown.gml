function exe_speed_up_cooldown(_carry)
{
	mouse_struct.mtime = floor(mouse_struct.mtime/_carry[0]);
	mouse_struct.mlbutt = 0;
	mouse_struct.mrbutt = 0;
}