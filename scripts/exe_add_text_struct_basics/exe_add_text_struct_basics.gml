function exe_add_text_struct_basics(_tex_struct)
{

		_tex_struct._big_sqr_size = tile_base_size*4 *icon_scale;
		_tex_struct._med_sqr_size = tile_base_size *icon_scale;
		
		_tex_struct._extension_cover =	[
								sprite_get_texture(tile_extension_txt0,0),	
								sprite_get_texture(tile_extension_txt1,0),
								sprite_get_texture(tile_extension_txt2,0),
								sprite_get_texture(tile_extension_txt3,0),
								sprite_get_texture(tile_extension_txt4,0),
								sprite_get_texture(tile_extension_txt5,0),
								sprite_get_texture(tile_extension_txt6,0),
								sprite_get_texture(tile_extension_txt7,0),
								sprite_get_texture(tile_extension_txt8,0),
								sprite_get_texture(tile_extension_txt9,0)
							];
		_tex_struct._tile_base_txt =	sprite_get_texture(tile_base_txt,0);
}