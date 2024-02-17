attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

//uniform float fake_z;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

varying vec4 v_xyzw_position;
//varying float v_fake_z;
void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
	//vec4 safe_z = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * vec4(0.,0.,fake_z,1.);
	
    v_vColour = in_Colour;
	v_vTexcoord = in_TextureCoord;
	v_xyzw_position = gl_Position;
	//v_fake_z = safe_z.z;
}
