// Checar se o player passou da borda e arredar os blocos pro campo de visão do player

if (global.PLAYER.x > room_width){
	for (var yval=0; yval <= ds_map_size(global.room_insts); y+= sprite_size){
		var map_y = global.room_insts[? yval]
		for (var xval=0; xval <= ds_map_size(map_y); xval+= 1){
			var block = map_y[? xval]
			
			block.x -= global.PLAYER.SPEED
			global.PLAYER.x = room_width
		}
	}
}
