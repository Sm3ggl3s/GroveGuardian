if(!timeline_running and !instance_exists(Obj_enemy)){
	global.wave_mode = false
	if(global.wave_count == 5 and room == global.current_room){
		room_goto(Rm_win)
		audio_play_sound(Sd_win, 0, false)
	}
}
else
	global.wave_mode = true
if(global.wave_count == 8 and room == global.current_room){
	room_goto(Rm_win)
	audio_play_sound(Sd_win, 0, false)
}
if(room == Rm_shop){
	if(global.isEmpty[0]){
		global.cards[0] = instance_create_layer(260,540,"Instances_shop",get_card(global.stock[0]))
		global.isEmpty[0] = false
	}
	if(global.isEmpty[1]){
		global.cards[1] = instance_create_layer(725,540,"Instances_shop",get_card(global.stock[1]))
		global.isEmpty[1] = false
	}
	if(global.isEmpty[2]){
		global.cards[2] = instance_create_layer(1195,540,"Instances_shop",get_card(global.stock[2]))
		global.isEmpty[2] = false
	}
	if(global.isEmpty[3]){
		global.cards[3] = instance_create_layer(1660,540,"Instances_shop",get_card(global.stock[3]))
		global.isEmpty[3] = false
	}
	if(!instance_exists(global.cards[0])){
		global.isEmpty[0] = true
		global.stock[0] = floor(random(6))
	}
	if(!instance_exists(global.cards[1])){
		global.isEmpty[1] = true
		global.stock[1] = floor(random(6))
	}
	if(!instance_exists(global.cards[2])){
		global.isEmpty[2] = true
		global.stock[2] = floor(random(6))
	}
	if(!instance_exists(global.cards[3])){
		global.isEmpty[3] = true
		global.stock[3] = -2
	}
}
else{
	global.isEmpty[0] = true
	global.isEmpty[1] = true
	global.isEmpty[2] = true
	global.isEmpty[3] = true
}




