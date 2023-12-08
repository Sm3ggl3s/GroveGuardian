if(sprite_index == Spr_enemy or sprite_index == Spr_enemy_summoner){
	image_angle = direction+90
}
if(distance_to_object(Obj_enemy_summon) > 256 and !cooldown){
	var summon = instance_create_layer(0,0,"Instances",Obj_enemy_summon)
	summon.path_position = path_position - .15
	cooldown = true
	alarm[0] = 75
}


