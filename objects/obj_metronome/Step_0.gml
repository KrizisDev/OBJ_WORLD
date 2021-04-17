/// @desc

seconds += delta_time / 1000000;

if(seconds >= SPB) {
	seconds -= SPB;
	beat ++;
}