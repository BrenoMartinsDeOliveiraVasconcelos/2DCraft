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
