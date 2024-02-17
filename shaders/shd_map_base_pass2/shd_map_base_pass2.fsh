varying vec2 v_vTexcoord;
varying vec4 v_vColour;
varying vec4 v_xyzw_position;

uniform sampler2D alpha_texture;
uniform sampler2D color_texture;
uniform sampler2D lines_texture;

uniform float dgw;
uniform float dgh;
uniform float fake_z;

uniform float cam_xref;
uniform float cam_yref;
uniform float shd_big_sqr_size;
uniform float shd_med_sqr_size;
void main()
{
	vec4 alpha_texture_color = texture2D( alpha_texture, v_vTexcoord );

	if (alpha_texture_color.a > 0.9)	//tile markers; like mountains fe
		{
			
			
			vec4 _take_color = texture2D(color_texture, 
										vec2(	(mod(gl_FragCoord.x + cam_xref,shd_big_sqr_size) /shd_big_sqr_size),
												(mod(gl_FragCoord.y + cam_yref,shd_big_sqr_size) /shd_big_sqr_size)
												));
			float current_depth = abs(fake_z) * 52428.;
			
			vec3 depth_color = vec3(
										mod(current_depth,256.),
										mod(current_depth/256.,256.),
										current_depth / 65536.
									);
					depth_color = floor(depth_color);
					depth_color /= 255.;

			vec4 lines_texture_color = texture2D( lines_texture, v_vTexcoord );
			if (lines_texture_color.a < 0.1)
				{
					gl_FragData[0] = vec4(_take_color.rgb,alpha_texture_color.a);
					gl_FragData[1] = vec4(1.,1.,1.,1.);
					gl_FragData[2] = vec4(depth_color,1.0);
					gl_FragData[3] = vec4(0.,0.,0.,0.);
				}
			else
				{
					gl_FragData[0] = vec4(_take_color.rgb,alpha_texture_color.a);
					gl_FragData[1] = lines_texture_color;
					gl_FragData[2] = vec4(depth_color,1.0);
					
					//glow
					float ltc_sum = lines_texture_color.r + lines_texture_color.g + lines_texture_color.b + lines_texture_color.a;
					if ((alpha_texture_color.b > 0.)	&& (ltc_sum < 3.9))	
						{
							gl_FragData[3] = vec4(lines_texture_color.r,lines_texture_color.g,lines_texture_color.b,alpha_texture_color.b);
						}
					else
						{
							gl_FragData[3] = vec4(0.,0.,0.,0.);
						}
				}
		}
	else discard;
}
