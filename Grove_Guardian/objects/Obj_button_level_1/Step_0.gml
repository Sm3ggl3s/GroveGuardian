if(mouse_check_button_pressed(mb_left)){
	if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)){
		room_goto(target_room)
		global.current_room = target_room
		global.path_1 = target_path_1
		global.path_2 = target_path_2
		audio_stop_all()
		audio_play_sound(room_music, 1, true)
		global.current_music = room_music
	}
}








