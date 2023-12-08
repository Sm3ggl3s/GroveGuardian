above_tower = collision_circle(x, y-128, 4, Obj_tower, false, true)
below_tower = collision_circle(x, y+128, 4, Obj_tower, false, true)
left_tower = collision_circle(x-128, y, 4, Obj_tower, false, true)
right_tower = collision_circle(x+128, y, 4, Obj_tower, false, true)
attack_speed_temp = attack_speed
if(above_tower != noone){
	if(above_tower.powered){
		powered = true
	}
	attack_speed_temp += above_tower.speed_buff
	
}
if(below_tower != noone){
	if(below_tower.powered){
		powered = true
	}
	attack_speed_temp += below_tower.speed_buff
}
if(left_tower != noone){
	if(left_tower.powered){
		powered = true
	}
	attack_speed_temp += left_tower.speed_buff
}
if(right_tower != noone){
	if(right_tower.powered){
		powered = true
	}
	attack_speed_temp += right_tower.speed_buff
}
if(attack_speed_temp < 1)
	attack_speed_temp = 1

if(powered){
	image_speed = 1
	if(target == noone){
		target = collision_circle(x, y, 64+(128*attack_range), Obj_enemy, false, true)
	}
	else{
		if(instance_exists(target) == false or point_distance(x, y, target.x, target.y) > 64+128*attack_range){
			target = noone
		}
		else {
			if(!cooldown){
				image_angle = point_direction(x,y,target.x,target.y)
				cooldown = true
				alarm[0] = attack_speed_temp
				var bullet = instance_create_layer(x,y, "Instances_player", Obj_bullet)
				bullet.direction = point_direction(x,y,target.x,target.y)
				bullet.speed = 30
				bullet.effect = tower_effect
				bullet.damage = attack_power
				bullet.alarm[0] = attack_range*7
			
				for(var i = attack_spread; i > 0; i -= 1){
					bullet = instance_create_layer(x,y, "Instances_player", Obj_bullet)
					bullet.direction = point_direction(x,y,target.x,target.y) + i*5
					bullet.speed = 30
					bullet.effect = tower_effect
					bullet.damage = attack_power
					bullet.alarm[0] = attack_range*7
				
					bullet = instance_create_layer(x,y, "Instances", Obj_bullet)
					bullet.direction = point_direction(x,y,target.x,target.y) - i*5
					bullet.speed = 30
					bullet.effect = tower_effect
					bullet.damage = attack_power
					bullet.alarm[0] = attack_range*7
				}
			}
		}
	}
}
else
	image_speed = 0