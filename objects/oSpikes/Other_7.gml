if(_spikeState == spikeStates.trap) { 
	_spikeState = spikeStates.idle;
	alarm[0] = _idleTime;
}