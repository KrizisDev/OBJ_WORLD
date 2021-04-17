/// @desc

for(var i = 0; i < 14; i ++) {
	var _xoff = irandom_range(x - 60, x + 60);
	var _yoff = irandom_range(y - 60, y + 60);
	var _what = instance_create_depth(_xoff, _yoff, -666, obj_whatisthat);
	_what.owner = id;
	_what.xoff = _xoff;
	_what.yoff = _yoff;
}