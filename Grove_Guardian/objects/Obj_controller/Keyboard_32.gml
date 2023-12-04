//Win
if(keyboard_check(ord("0")))
	global.wave_count = 8
//Add Money
if(keyboard_check(ord("1")))
	global.currency += 50
//Regain health
if(keyboard_check(ord("2")))
	health = 100
//Add a tower to your inventory
if(keyboard_check(ord("4")))
	global.inventory = Obj_source
if(keyboard_check(ord("5")))
	global.inventory = Obj_tower
if(keyboard_check(ord("6")))
	global.inventory = Obj_tower_shotgun
if(keyboard_check(ord("7")))
	global.inventory = Obj_tower_buff
if(keyboard_check(ord("8")))
	global.inventory = Obj_tower_slow
if(keyboard_check(ord("9")))
	global.inventory = Obj_fertilizer

	


