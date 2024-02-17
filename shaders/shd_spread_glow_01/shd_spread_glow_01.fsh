varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform sampler2D glow_surface;
uniform sampler2D terrain_cover_surface;

uniform float dgw;
uniform float dgh;
uniform float glow_range;
varying vec4 v_xyzw_position;
void main()
{
	vec4 terrain_cover_value = texture2D(terrain_cover_surface, v_vTexcoord);
	float n_glow_range = glow_range;
	float _dimm = 0.15;
	if ( (terrain_cover_value.r == terrain_cover_value.g) &&	(terrain_cover_value.r == terrain_cover_value.b) && (terrain_cover_value.a > 0.) )
		{
			_dimm = (1.-terrain_cover_value.a);
		}
	
	float _lowest_dist = glow_range;
	vec4 _highest_glow_color = vec4(1.,1.,1.,0.);
	for(float _nx = -n_glow_range; _nx < n_glow_range+1.; _nx+=1.)
		{
			for(float _ny = -n_glow_range; _ny < n_glow_range+1.; _ny+=1.)
				{
					
					float _posx = (gl_FragCoord.x + _nx) * dgw;
					float _posy = (gl_FragCoord.y + _ny) * dgh;
					
					float _continue = 1.;
					if (_posx < 0.)	{_continue = 0.;};
					if (_posx > 1.)	{_continue = 0.;};
					if (_posy < 0.)	{_continue = 0.;};
					if (_posy > 1.)	{_continue = 0.;};
					float _dist_xy = distance(vec2(0.0, 0.0), vec2(_nx, _ny));
					if ( _dist_xy > n_glow_range ) {_continue = 0.;};
					
					if (_continue > 0.5)
						{
							vec4 _take_color = texture2D(glow_surface,vec2(_posx,_posy));
							if ((_take_color.a > 0.1)	&&	(_take_color.a > _highest_glow_color.a))
								{
									_highest_glow_color = vec4(
																mix(_highest_glow_color.r * _highest_glow_color.a,_take_color.r * _take_color.a,_take_color.a/_dist_xy),
																mix(_highest_glow_color.g * _highest_glow_color.a,_take_color.g * _take_color.a,_take_color.a/_dist_xy),
																mix(_highest_glow_color.b * _highest_glow_color.a,_take_color.b * _take_color.a,_take_color.a/_dist_xy),
																mix(_highest_glow_color.a,						  _take_color.a,				_take_color.a/_dist_xy)
																);
									if (_dist_xy < _lowest_dist)	{_lowest_dist = _dist_xy;};
								}
						}
					
				}
		}
	if (_dimm > _lowest_dist)	{_dimm = _lowest_dist;};
	if (	(_highest_glow_color.a > 0. )	&&	(_highest_glow_color.a > _dimm )	)
		{
			gl_FragData[0] = vec4(_highest_glow_color.r,_highest_glow_color.g,_highest_glow_color.b,(_highest_glow_color.a - _dimm) * 0.75);
			//gl_FragData[0] = _highest_glow_color;
		}
	else
		{
			discard;
		}
	
	
}
