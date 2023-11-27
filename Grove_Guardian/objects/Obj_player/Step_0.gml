if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, Obj_block)) {
	x += -move_speed
	image_xscale = 1
}
if (keyboard_check(vk_right) and !instance_place(x+move_speed, y, Obj_block)) {
	x += move_speed
	image_xscale = -1
}
if (keyboard_check(vk_up) and !instance_place(x, y-move_speed, Obj_block)) {
	y += -move_speed
	image_xscale = -1
}
if (keyboard_check(vk_down) and !instance_place(x, y+move_speed, Obj_block)) {
	y += move_speed
	image_xscale = 1
}
if(view_visible[0] == 1)
	image_alpha = 0
else
	image_alpha = 1