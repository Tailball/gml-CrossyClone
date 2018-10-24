if(_spikeState == spikeStates.trap) {
	var curFrame = floor(image_index);
	if(curFrame > 1) {
		game_restart();
	}
}