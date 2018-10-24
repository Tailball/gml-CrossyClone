enum heroStates {
	idle,
	running
}

x = x - sprite_width / 2;

_startX = x;
_startY = y;

_movementTile = 16;
_destinationX = x;
_destinationY = y;
_lastDirection = 1;
_movementSpeed = 1.25;

_state = heroStates.idle;


