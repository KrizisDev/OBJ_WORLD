/// @desc

if(instance_exists(owner)) {
	x = owner.x + xoff;
	y = owner.y + yoff;
	motion_add(direction, 0.15);
}