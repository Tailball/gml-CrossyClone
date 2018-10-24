enum spikeStates {
	idle,
	trap
}

_idleTime = 125;
_spikeState = spikeStates.idle;
_chanceToTrap = 0.25;

alarm[0] = _idleTime;