if(position_meeting(device_mouse_x(0), device_mouse_y(0), id)){
	room_goto(global.current_room)
	audio_stop_all()
	audio_play_sound(global.current_music, 1, true)
}