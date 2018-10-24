x += _baseSpeed * _speedfactor * _direction;
image_xscale = _direction;

if(_direction == -1) {
	if(x - sprite_width < 0) {
		instance_destroy();
	}
}

if(_direction == 1) {
	if(x - sprite_width > room_width) {
		instance_destroy();
	}
}