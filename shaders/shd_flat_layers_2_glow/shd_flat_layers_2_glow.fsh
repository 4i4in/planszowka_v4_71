varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D base_surface;
uniform sampler2D outline_surface;
uniform sampler2D glow_surface;
uniform sampler2D cover_surface;

void main()
{
	vec4 _base_color = texture2D(base_surface, v_vTexcoord );
	vec4 _outline_color = texture2D(outline_surface, v_vTexcoord );
	vec4 _glow_color = texture2D(glow_surface, v_vTexcoord );
	vec4 _cover_color = texture2D(cover_surface, v_vTexcoord );
	
		
	if (_outline_color == vec4(0.,0.,0.,1.)	)
		{	
			if (_glow_color.a > 0.)
				{
					_outline_color = vec4(_glow_color.r,_glow_color.g,_glow_color.b,1.);
				}
			if (	(_cover_color.r == _cover_color.g)	&&	(_cover_color.r == _cover_color.b)	&&	(_cover_color.a > 0.)	)
				{
					vec3 _color0 = vec3(
									mix(_outline_color.r,_cover_color.r,_cover_color.a),
									mix(_outline_color.g,_cover_color.g,_cover_color.a),
									mix(_outline_color.b,_cover_color.b,_cover_color.a)
								);
					_color0 = clamp(_color0,0.,1.);
					gl_FragColor = vec4(_color0,1.);
				}
			else
				{
					gl_FragColor = _outline_color;
				}
		}
	else if (_outline_color.a >  0.	)
		{
			vec3 _color0 = vec3(
									mix(_base_color.r,_outline_color.r,_outline_color.a),
									mix(_base_color.g,_outline_color.g,_outline_color.a),
									mix(_base_color.b,_outline_color.b,_outline_color.a)
								);
			if (_glow_color.a > 0.)
				{
					_color0 = vec3(
									_color0.r + _glow_color.r * _glow_color.a,
									_color0.g + _glow_color.g * _glow_color.a,
									_color0.b + _glow_color.b * _glow_color.a
								);
				}
			_color0 = clamp(_color0,0.,1.);
			if (_cover_color.a >  0.	)
				{
					_color0 = vec3(
									mix(_color0.r,_cover_color.r,_cover_color.a),
									mix(_color0.g,_cover_color.g,_cover_color.a),
									mix(_color0.b,_cover_color.b,_cover_color.a)
								);
				};
			gl_FragColor = vec4(_color0,1.);
		}
	else if (_cover_color.a >  0.	)
		{
			vec3 _colorC = vec3(
									mix(_base_color.r,_cover_color.r,_cover_color.a),
									mix(_base_color.g,_cover_color.g,_cover_color.a),
									mix(_base_color.b,_cover_color.b,_cover_color.a)
								);
			_colorC = clamp(_colorC,0.,1.);
			gl_FragColor = vec4(_colorC,1.);
		}
	else
		{
			gl_FragColor = _base_color;
		}
	
	
}
