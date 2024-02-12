/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("R")) {
	room_restart()
}


if keyboard_check_pressed(ord("G")) {
	game_restart()
}


if keyboard_check_pressed(ord("L")) {
	lives += 5
}


if keyboard_check_pressed(ord("N")) {
	room_goto_next()
}
if keyboard_check_pressed(ord("S")) {
	obj_player.jump_height = -12
	obj_player.move_speed = 12
}



