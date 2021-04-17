/// @desc

var _s = string(round(s));
var _ms = string_replace_all(string_format(round(ms), 2, 0), " ", "0");

draw_set_font(fnt_century);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_black);
draw_set_alpha(0.25);
draw_text(x - 2, y, "02:44:" + _s + "." + _ms);
draw_set_alpha(1);

draw_set_color(c_white);
draw_text(x, y, "02:44:" + _s + "." + _ms);