if(mouse_check_button_pressed(mb_left)){
	if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)){
		global.wave_mode = true
		timeline_index = Wave1;
		timeline_position = 0;
		timeline_running = true;
	}
}








