_chestLocs = [
	[272, 16],
	[160, 16],
	[32, 16],
	[48, 112],
	[240, 128]
]

_chests = [];

_numChests = array_length_1d(_chestLocs); 
var treasureChest = irandom(_numChests - 1);

for(var i = 0; i < _numChests; i++) {
	var chestLoc = _chestLocs[i];
	_chests[i] = instance_create_layer(chestLoc[0], chestLoc[1], "Objects", oChest);
	if(i == treasureChest) {
		_chests[i]._hasTreasure = true;
	}
}