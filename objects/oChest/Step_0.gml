switch (_state) {
	case chestStates.idle: 
		sprite_index = sprChest_idle;
		image_index = 0;
		break;
		
	case chestStates.open:
		sprite_index = _hasTreasure ? sprChest_openTreasure : sprChest_openEmpty;
		image_speed = 0.6;
		break;
		
	case chestStates.opened: 
		_opened = true;
		sprite_index = _hasTreasure ? sprChest_openTreasure : sprChest_openEmpty;
		image_index = 2;
		image_speed = 0;
		
		if(_hasTreasure)
			game_restart();
			
		break;
}