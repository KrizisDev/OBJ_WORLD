/// @desc Effect control

seconds += delta_time / 1000000;

// Fade in/out states
switch(state) {
	case 0: // Fade in
		if(seconds >= SPB * 7.5) {
			seconds -= SPB * 7.5;
			state = !state;
		}
		title_alpha += 0.125;
		dis = lerp(dis, 0, 0.25);
		y_offset = lerp(y_offset, 0, 0.3);
	break;
	
	case 1: // Fade out
		if(seconds >= SPB * 0.5) {
			seconds -= SPB * 0.5;
			size = 1;
			state = !state;
			image_index ++;
		}
		title_alpha -= 0.075;
		dis = lerp(dis, 30, 0.8);
		y_offset = lerp(y_offset, 200, 0.15);
	break;
}

size -= 0.0005;
// Don't overshoot the alpha variable
title_alpha = clamp(title_alpha, 0, 1);