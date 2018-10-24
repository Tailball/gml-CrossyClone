if(_state == heroStates.idle) {
	sprite_index = sprHero_idle;
	
	var left = keyboard_check_pressed(vk_left);
	var right = keyboard_check_pressed(vk_right);
	var up = keyboard_check_pressed(vk_up);
	var down = keyboard_check_pressed(vk_down);

	xAxis = right - left;
	yAxis = down - up;
	
	var canMove = true;
	if(yAxis != 0) { 
		_destinationY = y + _movementTile * yAxis;
		
		if(place_meeting(x, _destinationY, oCollider))
			canMove = false;	
		
	}
	else if(xAxis != 0) {
		_destinationX = x + _movementTile * xAxis;
		_lastDirection = xAxis;
		
		if(place_meeting(_destinationX, y, oCollider))
			canMove = false;
	}
	
	if(canMove && (xAxis != 0 || yAxis != 0)) {
		_state = heroStates.running;
		image_index = 0;
	} 
	else {
		_destinationY = y;
		_destinationX = x;
	}
}

if(_state == heroStates.running) {
	sprite_index = sprHero_run;
	
	var diffX = floor(abs(x - _destinationX)) > 0;
	var diffY = floor(abs(y - _destinationY)) > 0;
	
	if(diffX || diffY) { 
		x += _movementSpeed * xAxis;
		y += _movementSpeed * yAxis;
	}
	else {
		_state = heroStates.idle;	
		image_index = 0;
		x = _destinationX;
		y = _destinationY;
	}
}

image_xscale = _lastDirection;


