window_set_size(768, 768)

global.GRAVITY = 1

var sprite_size = 8 // Tamanho usual


// Gerar player!!!!!
instance_create_layer(16, 16, "Player", oPlayer)


// Começar enchendo o canvas de ar

// Para cada coluna do canvas
for (var col = 0; col<= room_width; col+=1){
	// Para cada linha
	for (var lin = 0; lin <= room_height; lin+=1){
		if (lin % sprite_size == 0 && col % sprite_size == 0){
			instance_create_layer(col, lin, "Blocks", gas_block)
		}
	}
}