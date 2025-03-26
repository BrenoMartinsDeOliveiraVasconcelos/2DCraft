window_set_size(768, 768)

// Numero de chunks para gerar logo de cara
global.CHUNKS = 4

global.GRAVITY = 1

global.room_insts = ds_map_create() // Mapa com as instancias da sala
global.standby_blocks = ds_map_create() // SAlva blocos fora do cenário para ser adicionados depois se necessário (com o X actual do player)

sprite_size = 8 // Tamanho usual

// Gerar player!!!!!
global.PLAYER  = instance_create_layer(16, 16, "Player", oPlayer)


// Começar enchendo o canvas de ar

// Para cada coluna do canvas
for (var yval = 0; yval<= room_height; yval+=sprite_size){
	var instances_x = ds_map_create()
	// Para cada linha
	for (var xval = 0; xval <= room_width*global.CHUNKS; xval+=sprite_size){
		
		if (yval % sprite_size == 0 && xval % sprite_size == 0){
			instance = instance_create_layer(xval, yval, "Blocks", gas_block)
			show_debug_message(string(instance.x)+", "+string(instance.y))
			instance.TYPE = 0 // Ar
			instance.sprite_index = air
			instances_x[? xval] = instance
		}
	}
	global.room_insts[? yval] = instances_x
}


// Adicionar uns blocos só por teste

for (var xval = 0; xval <= room_width*global.CHUNKS; xval +=sprite_size){
	if (xval % sprite_size == 0){
		inst = global.room_insts[? 128][? xval]
		inst.TYPE = 1
		inst.sprite_index = noblock
	}
}


global.PLAYER.PHYSICS_ENABLED = true
