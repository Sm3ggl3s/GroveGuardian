if(target == noone){
	target = collision_circle(x+64, y+64, attack_range, Obj_enemy, false, true)
}
else{
	if(instance_exists(target) == false or point_distance(x+64, y+64, target.x, target.y) > attack_range){
		target = noone
	}
	else if(!cooldown){
		cooldown = true
		alarm[0] = attack_speed
		var bullet = instance_create_layer(x+64,y+64, "Instances", Obj_bullet)
		bullet.direction = point_direction(x+64,y+64,target.x,target.y)
		bullet.speed = 15
		bullet.damage = attack_power
		for(var i = attack_spread; i > 0; i -= 1){
			bullet = instance_create_layer(x+64,y+64, "Instances", Obj_bullet)
			bullet.direction = point_direction(x+64,y+64,target.x,target.y) + i*5
			bullet.speed = 10
			bullet.damage = attack_power
			
			bullet = instance_create_layer(x+64,y+64, "Instances", Obj_bullet)
			bullet.direction = point_direction(x+64,y+64,target.x,target.y) - i*5
			bullet.speed = 10
			bullet.damage = attack_power
		}
	}
}







