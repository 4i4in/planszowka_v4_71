function exe_vbuff_32x32()
{
	vbuff_32x32 = vertex_create_buffer();
	var _vbuff_keep = vbuff_32x32;
	vertex_begin(_vbuff_keep, vformat);
	
	var _offset = floor(control_array.tile_size/8);
	
	//triangle 1
	vertex_position_3d(_vbuff_keep,-2*_offset,-2*_offset,0);
	vertex_texcoord(_vbuff_keep,0.,0.);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,2*_offset,-2*_offset,0);
	vertex_texcoord(_vbuff_keep,1.,0.);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,-2*_offset,2*_offset,0);
	vertex_texcoord(_vbuff_keep,0.,1.);
	vertex_color(_vbuff_keep,-1,1);
					
	//triangle 2
	vertex_position_3d(_vbuff_keep,2*_offset,-2*_offset,0);
	vertex_texcoord(_vbuff_keep,1.,0.);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,2*_offset,2*_offset,0);
	vertex_texcoord(_vbuff_keep,1.,1.);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,-2*_offset,2*_offset,0);
	vertex_texcoord(_vbuff_keep,0.,1.);
	vertex_color(_vbuff_keep,-1,1);
	
	vertex_end(_vbuff_keep);
	vertex_freeze(_vbuff_keep);
}