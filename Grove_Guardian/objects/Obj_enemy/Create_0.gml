var path
if(random_range(0,2) > 1)
	path = enemy_path1
else
	path = enemy_path2
path_start(path, enemy_speed, path_action_stop, true)





