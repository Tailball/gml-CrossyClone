/// @description spawn enemy

if(!_enabled) 
	return;

var monster = instance_create_layer(x, y, "Enemies", _spawn);
monster._direction = _direction;

alarm[0] = _spawnRate;