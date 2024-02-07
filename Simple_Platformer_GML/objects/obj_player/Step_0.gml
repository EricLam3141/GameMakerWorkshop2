if (keyboard_check(vk_left)) {
	x += -move_speed
	image_xscale = -1
}

if (keyboard_check(vk_right)) {
	x += move_speed
	image_xscale = 1
}