other.enemy_health -= damage
if(other.enemy_speed == other.path_speed){
	if(other.path_speed - effect > 0)
		other.path_speed -= effect
	else
		other.path_speed = 0.5
	other.alarm[1] = duration
}
if(other.enemy_health <= 0){
	instance_destroy(other)
	score += other.enemy_score
	global.currency += other.enemy_score
}
instance_destroy()






