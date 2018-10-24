x += (_xDest - x) / _camSpeedFactorX;
y += (_yDest - y) / _camSpeedFactorY;

if(global._target != noone) {
	_xDest = global._target.x;
	_yDest = global._target.y;
}

var camProps = matrix_build_lookat(x, y, -1, x, y, 0, 0, 1, 0);
camera_set_view_mat(_camera, camProps);