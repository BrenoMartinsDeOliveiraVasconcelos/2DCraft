window_set_size(768, 768)
var sprite_size = 8 // Tamanho usual

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