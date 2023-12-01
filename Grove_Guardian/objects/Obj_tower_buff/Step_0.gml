above_tower = collision_circle(x+64, y-64, 64, Obj_tower, false, true)
below_tower = collision_circle(x+64, y+192, 64, Obj_tower, false, true)
left_tower = collision_circle(x-64, y+64, 64, Obj_tower, false, true)
right_tower = collision_circle(x+192, y+64, 64, Obj_tower, false, true)

if(above_tower != noone){
	if(above_tower.powered){
		powered = true
	}
}
if(below_tower != noone){
	if(below_tower.powered){
		powered = true
	}
}
if(left_tower != noone){
	if(left_tower.powered){
		powered = true
	}
}
if(right_tower != noone){
	if(right_tower.powered){
		powered = true
	}
}



