var colide = [oPlayer];
var players = [oPlayer];

for (var c = 0; c < array_length(colide); c += 1) {
    var obj = colide[c];
	
	var distanceX = obj.x - x
	var distanceY = obj.y - y
	
	// Modulo das distancias
	var mod_dx = abs(distanceX)
	var mod_dy = abs(distanceY)
	
	if (obj.PHYSICS_ENABLED){
		if (mod_dx <= AFFECT_X && mod_dy <= AFFECT_Y){
			obj.BLOCK_ID = id
			
			// SWitch no tipo do block
			switch (TYPE){
				case 0:
					if (obj.y <= room_height){
						obj.y += global.GRAVITY
					}else{
						obj.y = room_height
						global.GRAVITY = 0
					}
					break
				case 1:
					break
				default:
				show_message("????")
			}
		
		}else{
			if (obj.BLOCK_ID == id){
				// Retorna ao Y original só caso tiver fora do alcance em X
				if (mod_dx >= AFFECT_X){
					obj.y = obj.Y_INITIAL
				}
			}
		}
	}
}