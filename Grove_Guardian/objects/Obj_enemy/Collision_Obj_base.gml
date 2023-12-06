health -= enemy_damage
instance_destroy()
if(health <= 0){
	room_goto(Rm_lose)
}