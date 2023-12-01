if(room == Rm_shop){
	if(global.stock[0] != -1){
		global.cards[0] = instance_create_layer(260,540,"Instances_shop",get_card(global.stock[0]))
		global.stock[0] = -1
	}
	if(global.stock[1] != -1){
		global.cards[1] = instance_create_layer(725,540,"Instances_shop",get_card(global.stock[1]))
		global.stock[1] = -1
	}
	if(global.stock[2] != -1){
		global.cards[2] = instance_create_layer(1195,540,"Instances_shop",get_card(global.stock[2]))
		global.stock[2] = -1
	}
	if(global.stock[3] != -1){
		global.cards[3] = instance_create_layer(1660,540,"Instances_shop",get_card(global.stock[3]))
		global.stock[3] = -1
	}
	if(!instance_exists(global.cards[0])){
		global.stock[0] = floor(random(6))
	}
	if(!instance_exists(global.cards[1])){
		global.stock[1] = floor(random(6))
	}
	if(!instance_exists(global.cards[2])){
		global.stock[2] = floor(random(6))
	}
	if(!instance_exists(global.cards[3])){
		global.stock[3] = -2
	}
}