/// @desc

if(surface_exists(surf_a) == false) {
	surf_a = surface_create(GAME_WIDTH * global.window_size, GAME_HEIGHT * global.window_size);
}
if(surface_exists(surf_b) == false) {
	surf_b = surface_create(GAME_WIDTH * global.window_size, GAME_HEIGHT * global.window_size);
}

// Distort
surface_set_target(surf_a);
shader_set(sh_aberration);
shader_set_uniform_f(distort_u, distort);
draw_surface(application_surface, 0, 0);
shader_reset();
surface_reset_target();

// Blur
surface_set_target(surf_b);
shader_set(sh_radial_blur);
shader_set_uniform_f(blur_u, blur);
draw_surface(surf_a, 0, 0);
shader_reset();
surface_reset_target();

// Bloom
surface_set_target(surf_a);
shader_set(sh_bloom);
shader_set_uniform_f(bloom_intensity, bloom);
shader_set_uniform_f(bloom_size, 1 / 512);
draw_surface(surf_b, 0, 0);
shader_reset();
surface_reset_target();

draw_clear_alpha(c_white, 0);
draw_surface(surf_a, 0, 0);