varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec4 v_xyzw_position;

uniform sampler2D alpha_texture;
uniform sampler2D lines_texture;
uniform sampler2D depth_surface;

uniform float dgw;
uniform float dgh;
uniform float fake_z;

uniform float cam_xref;
uniform float cam_yref;
void main()
{
	
	vec4 alpha_texture_color = texture2D( alpha_texture, v_vTexcoord );

	if (alpha_texture_color.a > 0.9)	//tile markers; like mountains fe
		{
			vec4 depth_surface_color = texture2D( depth_surface, vec2(gl_FragCoord.x * dgw,gl_FragCoord.y * dgh) );
			
			float current_depth = abs(fake_z) * 52428.;	
			vec4 depth_surface_color_m = depth_surface_color *255.;
			float surface_depth = depth_surface_color_m.x + depth_surface_color_m.y * 256.0 + depth_surface_color_m.z * 65536.0;
			
			if (current_depth <= surface_depth)
				{
					vec4 lines_texture_color = texture2D( lines_texture, v_vTexcoord );
					gl_FragData[0] = lines_texture_color;
				}
			else discard;
		}
	else discard;
}
