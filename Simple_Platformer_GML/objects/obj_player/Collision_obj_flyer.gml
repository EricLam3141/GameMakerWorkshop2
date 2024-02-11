/// @description Insert description here
// You can write your code in this editor

if vspeed > 0 and obj_player.y+40 >= other.y {
	instance_destroy(other)
}
else {
	instance_destroy(obj_player)
}


