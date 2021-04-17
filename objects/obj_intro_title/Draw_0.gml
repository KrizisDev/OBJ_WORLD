/// @desc Draw surface

// How many slices should the distortion have
var _slices = 80;

if(surface_exists(surf) == false) {
    surf = surface_create(GAME_WIDTH * global.window_size, GAME_HEIGHT * global.window_size); // Create surface
} else {
    surface_set_target(surf);
    draw_clear_alpha(c_white, 0);
    for(var i = 1; i < _slices + 1; i ++) {
        var _w = 466 / _slices; // Slice width
        var _y = irandom_range(-y_offset, y_offset); // Distortion offset
        var _left = _w * (i - 1);
        var _top = _y;
        var _width = _w * i;
        var _height = 66 + _y;
        draw_set_color(c_white);
		draw_set_alpha(title_alpha);
		shader_set(sh_aberration); // Apply chromatic abberation shader
		shader_set_uniform_f(dis_u, dis);
		if(y_offset <= 1) {
			draw_sprite_ext(sprite_index, image_index, room_width / 2, room_height / 2, size, size, image_angle, image_blend, image_alpha);
		} else {
			draw_sprite_part(sprite_index, image_index, _left, 0, _width / i, 66, 88 + ((i == 1 ? 0 : _left)), 148 + _y);
		}
		shader_reset();
		draw_set_alpha(1);
    }
    surface_reset_target();
}

draw_surface(surf, 0, 0);