/// @desc

started = false;

// Blur
blur_u = shader_get_uniform(sh_radial_blur, "amount");
blur = 00;
blur_target = blur;
blur_speed = 0.005;

// Distort
distort_u = shader_get_uniform(sh_aberration, "u_Distance");
distort = 0;
distort_target = distort;
distort_speed = 0.02;

// Bloom
bloom_intensity = shader_get_uniform(sh_bloom, "intensity");
bloom_size = shader_get_uniform(sh_bloom, "blurSize");
bloom = 0;
bloom_toggle = false;

// Timers
seconds = 0;
seconds_max = SPB * 32;

// Surfaces
surf_a = surface_create(GAME_WIDTH * global.window_size, GAME_HEIGHT * global.window_size);
surf_b = surface_create(GAME_WIDTH * global.window_size, GAME_HEIGHT * global.window_size);