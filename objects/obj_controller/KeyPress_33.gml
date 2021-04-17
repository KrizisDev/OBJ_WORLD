/// @desc

if(global.window_size < 4) {
	global.window_size ++;
	window_set_size(GAME_WIDTH * global.window_size, GAME_HEIGHT * global.window_size);
	surface_resize(application_surface, GAME_WIDTH * global.window_size, GAME_HEIGHT * global.window_size);
	alarm[0] = 1;
}