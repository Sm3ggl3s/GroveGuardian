gridlocation[0] = floor(mouse_x/128)*128
gridlocation[1] = floor(mouse_y/128)*128

if(view_visible[0] != 1)
{
	image_alpha = 1
	if (keyboard_check(ord("A")) and !instance_place(x-move_speed, y, Obj_block)) {
		x += -move_speed
		image_xscale = 1
	}
	if (keyboard_check(ord("D")) and !instance_place(x+move_speed, y, Obj_block)) {
		x += move_speed
		image_xscale = -1
	}
	if (keyboard_check(ord("W")) and !instance_place(x, y-move_speed, Obj_block)){
		y += -move_speed
	}
	if (keyboard_check(ord("S")) and !instance_place(x, y+move_speed, Obj_block)){
		y += move_speed
	}
	if(!cooldown and mouse_check_button(mb_left) and global.wave_mode){
		cooldown = true
		alarm[0] = 25
		var bullet = instance_create_layer(x,y, "Instances_player", Obj_bullet)
		bullet.direction = point_direction(x,y,mouse_x,mouse_y)
		bullet.speed = 15
		bullet.damage = 1
	}
	if(global.inventory != noone and mouse_check_button(mb_right) and position_empty(mouse_x, mouse_y)){
		instance_create_layer(gridlocation[0], gridlocation[1], "Instances", global.inventory)
		global.inventory = noone
		show_debug_message("hello")
	}
}