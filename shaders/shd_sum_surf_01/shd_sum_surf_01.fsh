varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform sampler2D depth_surface;
uniform sampler2D second_surface;

uniform float dgw;
uniform float dgh;

uniform float cam_xref;
uniform float cam_yref;

vec4 black_color = vec4(0., 0., 0., 1.);
void main()
{
	vec4 depth_surface_color = texture2D(depth_surface,v_vTexcoord);
	vec4 second_surface_color = texture2D(second_surface,v_vTexcoord);
	
	if (second_surface_color.r == 1.)
		{
			gl_FragColor = depth_surface_color;
		}
	else
		{
			vec4 depth_surface_color_m = depth_surface_color *255.;
			float surface_depth = depth_surface_color_m.x + depth_surface_color_m.y * 256.0 + depth_surface_color_m.z * 65536.0;
			
			vec4 second_surface_color_m = second_surface_color *255.;
			float second_depth = second_surface_color_m.x + second_surface_color_m.y * 256.0 + second_surface_color_m.z * 65536.0;
			
			if (surface_depth >= second_depth)
				{
					gl_FragColor = second_surface_color;
				}
			else
				{
					gl_FragColor = depth_surface_color;
				}
		}
}
