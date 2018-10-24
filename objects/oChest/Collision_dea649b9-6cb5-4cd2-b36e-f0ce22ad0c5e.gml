if(_state == chestStates.idle) {
	_state = chestStates.open;
	global._target = id;
	other.x = other._startX;
	other.y = other._startY;
	other._destinationX = other.x;
	other._destinationY = other.y;
}