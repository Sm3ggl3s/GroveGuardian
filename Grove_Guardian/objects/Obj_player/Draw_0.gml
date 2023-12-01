
if(view_visible[0] != 1){
	draw_self()
	if(global.inventory != noone)
		draw_rectangle(gridlocation[0], gridlocation[1], gridlocation[0]+128, gridlocation[1]+128, true)
}


