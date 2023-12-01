if(position_meeting(device_mouse_x(0), device_mouse_y(0), id) and global.inventory == noone and global.currency >= card_cost*5){
	global.inventory = card_item
	global.currency -= 5*card_cost
	instance_destroy()
}