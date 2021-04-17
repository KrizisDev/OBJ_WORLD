/// @desc

var _beat = obj_metronome.beat;

// Room change
if(seconds >= seconds_max) {
	seconds -= seconds_max;
	if(room == rm_pre_chorus_higher) {
		started = false;
	}
	room_goto_next();
}

if((room == rm_title || room == rm_end) && started == false && keyboard_check_pressed(vk_enter)) {
	started = true;
	room_goto(rm_intro);
}

if(room == rm_end) {
	blur_target = 0;
	blur_speed = 0.0125;
}

// How many seconds before room change
if(started == true) {
	seconds += delta_time / 1000000;
	switch(room) {
		case rm_title:
			seconds_max = SPB;
		break;
		
		case rm_intro:
			seconds_max = SPB * 32;
		break;
	
		case rm_verse_earth:
			seconds_max = SPB * 8;
		break;
	
		case rm_verse_shrine:
			seconds_max = SPB * 7;
		break;
	
		case rm_verse_message:
			seconds_max = SPB;
		break;
	
		case rm_verse_creation:
			seconds_max = SPB * 32;
		break;
	
		case rm_pre_chorus_earth:
			seconds_max = SPB * 4;
		break;
	
		case rm_pre_chorus_missiles:
			seconds_max = SPB * 12;
		break;
	
		case rm_pre_chorus_higher:
			seconds_max = SPB * 4;
		break;
	}
}

// Distort effect
if(distort < distort_target) {
	distort += distort_speed;
} else if(distort_target < distort) {
	distort -= distort_speed;
}

// Blur
if(blur < blur_target) {
	blur += blur_speed;
} else if(blur_target < blur) {
	blur -= blur_speed;
}

// Bloom
if(bloom_toggle = true) {
	bloom = 0 + 0.1 + sin((((current_time * 0.001) + 0.5 * 0) / 0.5) * (pi * 2)) * 0.1;
}