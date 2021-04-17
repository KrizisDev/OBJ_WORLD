/// @desc

randomize();

// Macros
#macro GAME_WIDTH 640
#macro GAME_HEIGHT 360
#macro BPM 165 // Beats per minute
#macro BPS BPM / 60 // Beats per second
#macro SPB 1 / 2.75 // Seconds per beat

// Global variables
global.window_size = 1;

// Window size
application_surface_draw_enable(false);
window_set_size(GAME_WIDTH * global.window_size, GAME_HEIGHT * global.window_size);
display_set_gui_size(GAME_WIDTH, GAME_HEIGHT);
surface_resize(application_surface, GAME_WIDTH * global.window_size, GAME_HEIGHT * global.window_size);

// Miscellaneous
alarm[0] = 1; // Center window