if(path_speed < enemy_speed){
	shader_set(Sh_slow)
	draw_self()
	shader_reset()
}
else
	draw_self()


