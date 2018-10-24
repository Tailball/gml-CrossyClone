_camSpeedFactorY = 50;
_camSpeedFactorX = 100;
global._target = oHero;
_xDest = x;
_yDest = y;

_camera = camera_create();

var camProps = matrix_build_lookat(x, y, -1, x, y, 0, 0, 1, 0);
var camViewPort = matrix_build_projection_ortho(320, 240, -9999, 9999);

camera_set_view_mat(_camera, camProps);
camera_set_proj_mat(_camera, camViewPort);

view_camera[0] = _camera;