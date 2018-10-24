if(_spikeState == spikeStates.idle) {
	var chance = random(1);
	if(chance <= _chanceToTrap) {
		_spikeState = spikeStates.trap;
		image_index = 0;
	}
	else {
		alarm[0] = _idleTime;
	}
}