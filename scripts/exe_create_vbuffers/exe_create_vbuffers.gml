function exe_create_vbuffers()
{
	exe_vbuff_tile_64x64_flat();//vbuff_tile_64x64_flat
	
	exe_vbuff_tile();		//vbuff_tile base for tile
	exe_vbuff_32x32();		//vbuff_32x32 used for terrain extension
	
	//terrain markers
	exe_vbuff_64x64_up_down();	//mountains, hills
	exe_vbuff_64x64_flat();		//flat terrain
	exe_vbuff_64x64_flat_zo();	//flat terrain z+ control_array.tile_size/2 for color covers
	exe_vbuff_64x64_up();	//banner for trees, rocks
	
	exe_vbuff_dgw_dgh();	//vbuff_dgw_dgh full screen shaders
	exe_vbuff_320x320();	//vbuff_dgw_dgh full screen shaders
	
	exe_vbuff_64x32_flat_continuos();	//vbuff_dgw_dgh full screen shaders
	exe_vbuff_64x32_flat_continuos_delta();	//vbuff_dgw_dgh full screen shaders
	
}