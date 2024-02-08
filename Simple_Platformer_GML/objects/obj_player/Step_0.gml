if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_block)) {
	x += -move_speed
	image_xscale = -1
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_block)) {
	x += move_speed
	image_xscale = 1
}