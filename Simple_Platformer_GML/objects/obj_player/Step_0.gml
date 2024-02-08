jump_height = -8

if instance_place(x, y+1, obj_block) {
	gravity = 0
}
else {
	gravity = .25
}




if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_block)) {
	x += -move_speed
	image_xscale = -1
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_block)) {
	x += move_speed
	image_xscale = 1
}
if (keyboard_check(vk_up)) {
	show_debug_message("jumping...")
	if (instance_place(x, y+1, obj_block)) {
		vspeed = jump_height
	}
}
