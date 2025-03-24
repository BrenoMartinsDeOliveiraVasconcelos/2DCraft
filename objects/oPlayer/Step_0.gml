// Key para andar

if (keyboard_check(WALK_X_KEY_SUB)){
	x -= SPEED
	
	// Sprite normal
	image_xscale = XSCALE_ABS
	
}else if (keyboard_check(WALK_X_KEY_PLUS)){
	x += SPEED
	
	// Inverter o sprite
	image_xscale = XSCALE_INVERT
}


// Checar se pulou
if (keyboard_check(JUMP_KEY) && !IS_JUMPING){
	IS_JUMPING = true
	JUMP_PHASE = 0
}

if (IS_JUMPING){
	PHYSICS_ENABLED = false // Para os blocos do tipo 0 não interferirem
	
	// Subir até atingir o limite
	if (JUMP_PHASE >= 0 && JUMP_PHASE < JUMP_MAX){
		y -= global.GRAVITY
	}else{
		if (JUMP_PHASE >=  JUMP_MAX && JUMP_PHASE < JUMP_MAX*2){
			// Cair até chegar no original :P
			y += global.GRAVITY
		}
	}
	
	JUMP_PHASE += 1 
}

if (JUMP_PHASE > JUMP_MAX * 2){
	JUMP_PHASE = -1
	IS_JUMPING = false
	PHYSICS_ENABLED = true
}


