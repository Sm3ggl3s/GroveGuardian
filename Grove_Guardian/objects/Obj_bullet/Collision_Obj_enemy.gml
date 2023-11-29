other.enemy_health -= damage
if(other.enemy_health <= 0){
	instance_destroy(other)
	score += other.enemy_score
}
instance_destroy()






