
if(view_visible[0] != 1){
	draw_self()
	if(global.inventory != noone and !global.wave_mode)
		draw_rectangle(global.gridlocation[0], global.gridlocation[1], global.gridlocation[0]+128, global.gridlocation[1]+128, true)
}


