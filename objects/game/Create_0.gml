randomize();
window_set_fullscreen(true);
game_set_speed(30, gamespeed_fps);
//dgw = display_get_width();
//dgh = display_get_height();
window_set_showborder(false);
dgw = window_get_width();
dgh = window_get_height();
room_set_width(room, dgw);
room_set_height(room,dgh);
room_goto(room);


surface_resize(application_surface,dgw,dgh);

x_scale = dgw/1920;
y_scale = dgh/1080;
icon_scale = x_scale;
height_base = 256.; height_step = 8.;
game_time = 0;


font_enable_effects(fnt_arial_outline, true, {
						outlineEnable: true,
						outlineDistance: 1,
						outlineColour: c_black
					});
					

tile_base_size = 64.;
force_main_map_redraw = 1;
force_minimap_redraw = "";
reset_current_menu_array = 1;

if y_scale < x_scale	{	icon_scale = y_scale;	};

main_surface = surface_create(dgw,dgh);

base_surface = surface_create(dgw,dgh);
map_surface = surface_create(dgw,dgh);
depth_surface = surface_create(dgw,dgh);
depth_surface2 = surface_create(dgw,dgh);
depth_surface3 = surface_create(dgw,dgh);
features_surface = surface_create(dgw,dgh);
outline_surface = surface_create(dgw,dgh);

glow_surface = surface_create(dgw,dgh);
glow_surface2 = surface_create(dgw,dgh);

climate_surface = surface_create(dgw,dgh);
terrain_cover_surface =	surface_create(dgw,dgh);

temporary_render = surface_create(1,1);

height_map = surface_create(1,1);

air_minimap = surface_create(1,1);
air_minimap_moved = surface_create(1,1);

ground_minimap = surface_create(1,1);
ground_minimap_moved = surface_create(1,1);

underground_minimap = surface_create(1,1);
underground_minimap_moved = surface_create(1,1);

underdark_minimap = surface_create(1,1);
underdark_minimap_moved = surface_create(1,1);

underwater_minimap = surface_create(1,1);
underwater_minimap_moved = surface_create(1,1);

water_deepths_minimap = surface_create(1,1);
water_deepths_minimap_moved = surface_create(1,1);

water_abbys_minimap = surface_create(1,1);
water_abbys_minimap_moved = surface_create(1,1);

fairyland_minimap = surface_create(1,1);
fairyland_minimap_moved = surface_create(1,1);

sound = 
	{
		loops : [],	
	};
mouse_struct = 
	{
		mx : -1, my : -1, mtime : -1,	mlbutt : 0, mrbutt : 0, mcool : 15,	function_executed : 0,	
		func_carry : [],
	};

click_restricted = []; click_restricted_show = 0; current_restricted = -1;
debug_overlay = 0;


mouse_info =
	{
		txt : "",	mx : -1,	my : -1,
	};

render_drawing_hijack =
	{
		keep0 : -1,
	};
	
control_array = 
	{
		current_menu : "main_menu",	current_menu_array : [],
		tile_size : floor(tile_base_size*icon_scale),
		map_drawing_mode : "GLSL_ES_ver2",
		
		current_player : 0, players_total : 1,
		
		draw_tile_extension : 1,	draw_terrain_markers : 1,	draw_terrain_cover : 1,
		draw_tile_climate : 0,		draw_terrain_items : 1,
		draw_grid : 0.,				dev_show_depth_surface : 0,
		glow_range : 4.,
		
		camx : 0, camy : 0, cam_speed : 48,	move_border : 4,	move_map : 0,
		map_cam_x_from : 0,	map_cam_y_from : 0,	map_cam_x_to : 0,	map_cam_y_to : 0,
		cam_x_range : 0,	cam_y_range : 0,
		map_x : 32, map_y : 32,
		map_current_name_level : "ground",
		map_avilable_level : ["air","ground","underground","underdark","underwater","water_deepths","water_abbys","fairyland",],
		climate : [0.3,0.6,0.5],
	}
srf_mini = 5* control_array.tile_size; //used for fast render

map_generator = 
	{
		map_x : 32, map_y : 32,	map_size_step : 32,	map_max_size : 128,  show_scale : 4,
		map_naiming_base : exe_return_map_naiming_base(),
		current_naming_array : [],
		voronoi_points : 25, 
		current_generator_step_0 :				"exe_voronoi_map_gen_01",
		current_generator_step_1 :				"exe_hm_to_terrain_voronoi_01",
		current_generator_step_2underground :	"exe_ground_to_underground_01",
		current_generator_step_3underdark :		"exe_ground_and_underground_to_underdark_01",
		current_generator_step_4underwater :	"exe_ground_to_underwater_01",
		current_generator_step_5water_deepths :	"exe_ground_to_water_deepths_01",
		current_generator_step_6water_abbys :	"exe_ground_to_water_abbys_01",
		
		noise_level : 6,	rnd_seed : random_get_seed(),
		map_name : "random_map",	height_map : [],	part_map : [],
		mapheight_min : -1, mapheight_max : -1, mapheight_mean : -1,
		water_cover : 0,	expected_water_cover : 0.65, 
		set_water_source_at_humidity : 0.95,	
		autogenerate_rivers : 0,
		
		/*shader z aprox for height
		256 = 73,12,130, peaks				vec3(0.286, 0.047, 0.510)
		264​= 171,28,30, highland			vec3(0.671, 0.110, 0.118)
		272​= 14, 45, 130, lowland			vec3(0.0549, 0.1765, 0.5098)
		280​= 121, 61, 130, shallow water	vec3(0.4745, 0.2392, 0.5098)
		288​= 210, 77, 130,  deep water		vec3(0.8235, 0.3020, 0.5098)
		296​= 53,94,130, ocean rifts		vec3(0.2078, 0.3686, 0.5098)
		304≈0.768
		312​≈0.896
		318.5 = 0
		*/
		
		map_spliting : 5,	split_array : [],
		legal_terrains_ground : ["peaks","highland","lowland","shallow_water","deep_water","ocean_rifts"],
		wind_references_magnitude_multipler :	[.1,.25,.5,.75,1.,1.25],
		wind_references_direction_mode :		["drop","split","forward","forward","forward","forward"],
		humidity_references_magnitude_multipler :	[0.5,1,1.25,1.5,1.75,2.],
		height_references : [height_base, height_base + height_step, height_base + 2*height_step, height_base + 3*height_step, height_base + 4*height_step, height_base + 5*height_step, height_base + 6*height_step, height_base + 7*height_step],
		expected_cover : ["peaks",0.04,"highland",0.08,"lowland",-1,"shallow_water",-1,"deep_water",-1,"ocean_rifts",-1],
		result_cover : ["peaks",0,"highland",0,"lowland",0,"shallow_water",0,"deep_water",0,"ocean_rifts",0],
		water_sum : 0,
		legal_terrains_colors : exe_return_temp_color_ground(),
		legal_underground_colors : exe_return_temp_color_underground(),
		legal_underdark_colors : exe_return_temp_color_underdark(),
		legal_underwater_colors : exe_return_temp_color_underwater(),
		legal_water_deepths_colors : exe_return_temp_color_water_deepths(),
		legal_water_abbys_colors : exe_return_temp_color_water_abbys(),
		
		descriptor_values_struct : exe_return_struct_descriptor_values(),
	}
	
menus = 
	{
		editor_palete : exe_return_editor_pallete_struct(),
		minimap :		exe_return_minimap_struct(),
	}

deleyed_function = 
	{
		delay : 0, func : "", carry : [],	txt : "", pic : "",	pos_x : -1,	pos_y : -1,
	}
background_function = 
	{
		func : "", carry : [],	txt : "",	pos_x : -1,	pos_y : -1,
		delayed : [],
	}

tex_struct = exe_return_text_struct();
exe_add_text_struct_basics(tex_struct);
exe_add_text_struct_ground_colors(tex_struct);
exe_add_text_struct_ground_covers(tex_struct);
exe_add_text_struct_ground_items(tex_struct);
exe_add_text_struct_ground_continuos(tex_struct);

exe_add_text_struct_underground_colors(tex_struct);




game_map =	exe_return_map_struct();
	
menu_templates = exe_create_menu_templates();

dev_menu_on = 0;	dev_submenu = 0;
display_menu_on = 0;

gpu_set_cullmode(cull_counterclockwise);
gpu_set_zwriteenable(true);
gpu_set_ztestenable(true);
gpu_set_alphatestenable(true);

surface_depth_disable(false);

vertex_format_begin();
vertex_format_add_position_3d();
vertex_format_add_texcoord();
vertex_format_add_color();
vformat = vertex_format_end();

exe_create_vbuffers();







