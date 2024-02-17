function exe_vbuff_64x64_up_down()
{
	vbuff_64x64_up_down = vertex_create_buffer();
	var _vbuff_keep = vbuff_64x64_up_down;
	vertex_begin(_vbuff_keep, vformat);
	
	//triangle 1
	vertex_position_3d(_vbuff_keep,-control_array.tile_size/2,-control_array.tile_size/2,-control_array.tile_size/2);
	vertex_texcoord(_vbuff_keep,0.,0.);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,control_array.tile_size/2,-control_array.tile_size/2,-control_array.tile_size/2);
	vertex_texcoord(_vbuff_keep,1.,0.);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,-control_array.tile_size/2,0,0);
	vertex_texcoord(_vbuff_keep,0.,0.5);
	vertex_color(_vbuff_keep,-1,1);
					
	//triangle 2
	vertex_position_3d(_vbuff_keep,control_array.tile_size/2,-control_array.tile_size/2,-control_array.tile_size/2);
	vertex_texcoord(_vbuff_keep,1.,0.);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,control_array.tile_size/2,0,0);
	vertex_texcoord(_vbuff_keep,1.,0.5);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,-control_array.tile_size/2,0,0);
	vertex_texcoord(_vbuff_keep,0.,0.5);
	vertex_color(_vbuff_keep,-1,1);
	
	//triangle 3
	vertex_position_3d(_vbuff_keep,-control_array.tile_size/2,0,0);
	vertex_texcoord(_vbuff_keep,0.,0.5);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,control_array.tile_size/2,0,0);
	vertex_texcoord(_vbuff_keep,1.,0.5);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,-control_array.tile_size/2,control_array.tile_size/2,0);
	vertex_texcoord(_vbuff_keep,0.,1,);
	vertex_color(_vbuff_keep,-1,1);
					
	//triangle 4
	vertex_position_3d(_vbuff_keep,control_array.tile_size/2,0,0);
	vertex_texcoord(_vbuff_keep,1.,0.5);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,control_array.tile_size/2,control_array.tile_size/2,0);
	vertex_texcoord(_vbuff_keep,1.,1,);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,-control_array.tile_size/2,control_array.tile_size/2,0);
	vertex_texcoord(_vbuff_keep,0.,1,);
	vertex_color(_vbuff_keep,-1,1);
	
	vertex_end(_vbuff_keep);
	vertex_freeze(_vbuff_keep);
}