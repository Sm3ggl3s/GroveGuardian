if(global.current_room == Room2){
	enemy_health += (enemy_health)*.5
	enemy_score += (enemy_score)*.5
	enemy_speed += 1
}
var path
if(random_range(0,2) > 1)
	path = global.path_1
else
	path = global.path_2
path_start(path, enemy_speed, path_action_stop, true)





