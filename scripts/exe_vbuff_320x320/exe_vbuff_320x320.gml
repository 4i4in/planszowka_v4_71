function exe_vbuff_320x320()
{
	vbuff_320x320 = vertex_create_buffer();
	var _vbuff_keep = vbuff_320x320;
	vertex_begin(_vbuff_keep, vformat);
	
	//triangle 1
	vertex_position_3d(_vbuff_keep,0,0,0);
	vertex_texcoord(_vbuff_keep,0.,0.);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,srf_mini,0,0);
	vertex_texcoord(_vbuff_keep,1.,0.);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,0,srf_mini,0);
	vertex_texcoord(_vbuff_keep,0.,1.);
	vertex_color(_vbuff_keep,-1,1);
					
	//triangle 2
	vertex_position_3d(_vbuff_keep,srf_mini,0,0);
	vertex_texcoord(_vbuff_keep,1.,0.);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,srf_mini,srf_mini,0);
	vertex_texcoord(_vbuff_keep,1.,1.);
	vertex_color(_vbuff_keep,-1,1);
					
	vertex_position_3d(_vbuff_keep,0,srf_mini,0);
	vertex_texcoord(_vbuff_keep,0.,1.);
	vertex_color(_vbuff_keep,-1,1);
	
	vertex_end(_vbuff_keep);
	vertex_freeze(_vbuff_keep);
}