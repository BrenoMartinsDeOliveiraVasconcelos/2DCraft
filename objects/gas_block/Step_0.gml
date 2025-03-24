var colide = [oPlayer];
var players = [oPlayer];

for (var c = 0; c < array_length(colide); c += 1) {
    var obj = colide[c];
	
	var distanceX = obj.x - x
	var distanceY = obj.y - y
	
	// Modulo das distancias
	var mod_dx = abs(distanceX)
	var mod_dy = abs(distanceY)
	
	if (mod_dx <= AFFECT_X && mod_dy <= AFFECT_Y){
		obj.BLOCK_ID = id
		
		obj.y += global.GRAVITY
		
	}else{
		if (obj.BLOCK_ID == id){
			// Retorna ao Y original só caso tiver fora do alcance em X
			if (mod_dx >= AFFECT_X){
				obj.y = obj.Y_INITIAL
			}
		}
	}
}