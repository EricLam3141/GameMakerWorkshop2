if obj_player.climbing {
	vspeed = -0.25
	gravity = 0
}

if (instance_place(x,y, obj_ladder)) {
	if (keyboard_check(vk_up) or keyboard_check(vk_down)) {
		climbing = true
		vspeed = -.25
		gravity = 0
		sprite_index = spr_climbing
	}
}
else {
	climbing = false
	sprite_index = spr_player
}

if (climbing) {
	if (keyboard_check(vk_up)) {
		vspeed = -climb_speed
	}
	if (keyboard_check(vk_down)) {
		vspeed = climb_speed
	}
	if (keyboard_check(vk_left)){
		obj_player.hspeed = 0
	}
	if (keyboard_check(vk_right)){
		obj_player.hspeed = 0
	}
}

if instance_place(x, y+1, obj_block) {
	gravity = 0
}
else {
	gravity = .25
}
if vspeed > 12 then vspeed = 12

if keyboard_check_pressed(ord("Z")) {
	instance_create_layer(x,y,"Instances", obj_sword);
	
}
if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_block) and !obj_player.climbing) {
	x += -move_speed
	image_xscale = -1
}

if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, obj_block) and !obj_player.climbing) {
	x += move_speed
	image_xscale = 1
}
if (keyboard_check(vk_up)) {
	show_debug_message("jumping...")
	if (instance_place(x, y+1, obj_block)) {
		vspeed = jump_height
	}
}
