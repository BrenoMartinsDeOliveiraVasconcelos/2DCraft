// Checar se o player passou da borda e arredar os blocos pro campo de visão do player

if (global.PLAYER.x > room_width or global.PLAYER.x < 0) {
	// Saber se move para direita ou para esquerda
	var moveSpeed = global.PLAYER.SPEED
	var newX = room_width
	var walkDirection = 1 // 0  esquerdo; 1 direita
	var updateGen = true
	
	var gen_coord = [0, 0] // x, y
	
	if (global.PLAYER.x < 0){
		moveSpeed *= -1
		newX = 0
		walkDirection = 0
	}
	
    // Iterar sobre as linhas no mapa global
    var y_keys = ds_map_keys_to_array(global.room_insts) //(global.room_insts); // Obter todas as chaves Y
    for (var i = 0; i < array_length(y_keys); i++) {
        var yval = y_keys[i];
        var map_y = global.room_insts[? yval]; // Mapa X para esta linha Y

        // Iterar sobre as colunas no mapa X
        var x_keys = ds_map_keys_to_array(map_y) ; // Obter todas as chaves X
		//show_message(string(array_length(x_keys)))
        for (var j = 0; j < array_length(x_keys); j++) {			
            var xval = x_keys[j];
            var block = map_y[? xval];
			
			show_debug_message(string(block.x)+", "+string(block.y))

            // Verificar se o bloco é uma instância válida
			block.x -= moveSpeed;
		
			if (updateGen){  // Define o array das coordenadas de direção para o primeiro x, y caso a direção seja o lado esquerdo
				gen_coord[0] = block.x
				gen_coord[1] = 0
			}
			
			if (walkDirection == 0){
				updateGen = false
			}
		
			//show_debug_message(string(block.x)
	
        }
    }

    // Ajustar a posição do jogador
	global.PLAYER.ACTUAL_PLAYER_X -= moveSpeed
    global.PLAYER.x = newX
}

// Mover os blocos mais distantes que o tamanho da sala para uma estrtutura de dados
// Em seguida remover do cenário para otimização