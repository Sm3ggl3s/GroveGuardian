function upgrade(target){
	show_debug_message("upgraded")
	switch(target.tower_id){
		case 0:
			target.attack_range += 1
			break
		case 1:
			target.attack_spread += 1
			break
		case 2:
			target.speed_buff -= 1
			break
		case 3:
			target.tower_effect += 1
			break
	}		
}