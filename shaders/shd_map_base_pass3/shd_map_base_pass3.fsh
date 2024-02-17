//render climate
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec4 v_xyzw_position;

uniform float climate0;
uniform float mode;

void main()
{
	if (mode == 0.) //temperature
		{
			if (climate0 < 0.3)	{gl_FragData[0] = vec4(1.,1.,1.,1.-climate0);}
			else if (climate0 < 0.6)	{gl_FragData[0] = vec4(0.,0.5,0.,1.-climate0);}
			else {gl_FragData[0] = vec4(1.,0.,0.,climate0);}
		};
	if (mode == 1.) //humidity
		{
			gl_FragData[0] = vec4(0.,0.,1.,climate0);
		};
	
}
