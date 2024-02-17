varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform sampler2D features_surface;

uniform float dgw;
uniform float dgh;
varying vec4 v_xyzw_position;

uniform float cam_xref;
uniform float cam_yref;
//uniform float color_alpha;
float check_range = 1.;

vec4 black_color = vec4(0., 0., 0., 1.);
void main()
{
	vec4 featuresCurrent = texture2D(features_surface, v_vTexcoord);
	
	if (featuresCurrent == vec4(1.,1.,1.,1.)	)
		{
			//white is just a 3d cover for another objects
			discard;
		}
	else if (featuresCurrent.a > 0.	)
		{
			gl_FragData[0] = featuresCurrent;
		}
}
