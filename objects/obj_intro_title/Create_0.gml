/// @desc Title initialization

size = 1; // Title size
surf = -1; // Surface
y_offset = 400; // Distortion offset
title_alpha = 0;
state = 0; // Fade in/out state
dis_u = shader_get_uniform(sh_aberration, "u_Distance");
dis = 30;
seconds = 0;