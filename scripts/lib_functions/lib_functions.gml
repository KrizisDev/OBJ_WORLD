#region BLUR
function blur_in_fast() {
	obj_controller.blur_target = 0.15;
	obj_controller.blur_speed = 0.025;
}

function blur_in_slow() {
	obj_controller.blur_target = 0.15;
	obj_controller.blur_speed = 0.0125;
}

function blur_out_fast() {
	obj_controller.blur_target = 0;
	obj_controller.blur_speed = 0.025;
}

function blur_out_slow() {
	obj_controller.blur_target = 0;
	obj_controller.blur_speed = 0.0125;
}

function blur_frame() {
	obj_controller.blur = 0.15;
	obj_controller.blur_target = 0;
	obj_controller.blur_speed = 0.0125;
}
#endregion

#region BLOOM
function bloom_enable() {
	obj_controller.bloom = 0.1;
}

function bloom_disable() {
	obj_controller.bloom = 0;
}

function bloom_toggle_wave() {
	obj_controller.bloom_toggle = !obj_controller.bloom_toggle
}
#endregion

#region DISTORT
function distort_in_slow() {
	obj_controller.distort_target = 20;
	obj_controller.distort_speed = 0.05;
}

function distort_in_fast() {
	obj_controller.distort_target = 20;
	obj_controller.distort_speed = 0.1;
}

function distort_out_slow() {
	obj_controller.distort_target = 0;
	obj_controller.distort_speed = 0.05;
}

function distort_out_fast() {
	obj_controller.distort_target = 0;
	obj_controller.distort_speed = 0.1;
}

function distort_disable() {
	obj_controller.distort = 0;
	obj_controller.distort_target = 0;
}
#endregion

function play_audio() {
	audio_stop_sound(mus_goodworld);
	audio_stop_sound(mus_static);
	audio_play_sound(mus_goodworld, 0, false);
}

function play_static() {
	audio_play_sound(mus_static, 0, true);
}