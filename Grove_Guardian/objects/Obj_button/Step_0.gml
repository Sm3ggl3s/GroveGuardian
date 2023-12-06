if(mouse_check_button_pressed(mb_left)){
	if(position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), id)){
		global.wave_mode = true
		if(global.wave_count == 0){
			timeline_index = Wave1;
			timeline_position = 0;
			timeline_running = true;
		}
		else if(global.wave_count == 1){
			timeline_index = Wave2;
			timeline_position = 0;
			timeline_running = true;
		}
		else if(global.wave_count == 2){
			timeline_index = Wave3;
			timeline_position = 0;
			timeline_running = true;
		}
		else if(global.wave_count == 3){
			timeline_index = Wave4;
			timeline_position = 0;
			timeline_running = true;
		}
		else if(global.wave_count == 4){
			timeline_index = Wave5;
			timeline_position = 0;
			timeline_running = true;
		}
	}
}








