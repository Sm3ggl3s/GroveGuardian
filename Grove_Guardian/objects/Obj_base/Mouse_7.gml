if(position_meeting(device_mouse_x(0), device_mouse_y(0), id) and !global.wave_mode){
	room_goto(Rm_shop)
	audio_stop_all()
	audio_play_sound(Sd_shop, 1, true)
}
