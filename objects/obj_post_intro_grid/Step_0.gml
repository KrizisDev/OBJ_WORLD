/// @desc Lerp

seconds += delta_time / 1000000;

fill_size = lerp(fill_size, 119, 0.4);

if(seconds >= SPB) {
	seconds -= SPB;
	image_alpha = 1;
	grid_fill = !grid_fill;
	fill_size = 0;
	if(grid_fill == true) {
		icon_index ++;
	}
}