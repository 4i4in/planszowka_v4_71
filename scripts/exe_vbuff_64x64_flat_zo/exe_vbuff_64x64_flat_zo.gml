function exe_vbuff_64x64_flat_zo()
{
	vbuff_64x64_flat_zo = vertex_create_buffer();
	var _vbuff_keep = vbuff_64x64_flat_zo;
	vertex_begin(_vbuff_keep, vformat);
	
	//triangle 1
	vertex_position_3d(_vbuff_keep,-control_array.tile_size/2,-control_array.tile_size/2,-control_array.tile_size/2);
	vertex_texcoord(_vbuff_keep,0.,0.);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,control_array.tile_size/2,-control_array.tile_size/2,-control_array.tile_size/2);
	vertex_texcoord(_vbuff_keep,1.,0.);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,-control_array.tile_size/2,control_array.tile_size/2,-control_array.tile_size/2);
	vertex_texcoord(_vbuff_keep,0.,1.);
	vertex_color(_vbuff_keep,-1,1);
					
	//triangle 2
	vertex_position_3d(_vbuff_keep,control_array.tile_size/2,-control_array.tile_size/2,-control_array.tile_size/2);
	vertex_texcoord(_vbuff_keep,1.,0.);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,control_array.tile_size/2,control_array.tile_size/2,-control_array.tile_size/2);
	vertex_texcoord(_vbuff_keep,1.,1.);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,-control_array.tile_size/2,control_array.tile_size/2,-control_array.tile_size/2);
	vertex_texcoord(_vbuff_keep,0.,1.);
	vertex_color(_vbuff_keep,-1,1);
	
	vertex_end(_vbuff_keep);
	vertex_freeze(_vbuff_keep);
}