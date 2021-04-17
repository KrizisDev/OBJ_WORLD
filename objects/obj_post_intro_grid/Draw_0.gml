/// @desc Draw grid

draw_self();

draw_set_color(c_white);
gpu_set_blendmode(bm_add);
if(grid_fill == true) {
	draw_rectangle(x, y, x + fill_size, y + 119, false);
} else {
	draw_rectangle(x + fill_size, y, x + 119, y + 119, false);
}
gpu_set_blendmode(bm_normal);
draw_sprite(spr_gml_assets, icon_index, x + 60, y + 60);