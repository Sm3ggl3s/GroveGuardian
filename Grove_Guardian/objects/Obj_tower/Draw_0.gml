if(room == global.current_room){
	if(attack_speed_temp < attack_speed)
		shader_set(Sh_buff)
	draw_self()
	shader_reset()
	if(x == global.gridlocation[0]+64 and y == global.gridlocation[1]+64)
		draw_circle_color(x, y, 64+(128*attack_range),c_black, c_black, true)
}

