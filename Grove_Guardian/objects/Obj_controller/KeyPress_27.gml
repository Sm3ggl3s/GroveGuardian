room_goto(Rm_menu)

health = 100
score = 0
//Player money
global.currency = 40
//Game state
global.wave_mode = false
//Player inventory
global.inventory = Obj_source
global.inventory = noone
//Shop card tracking
global.stock = [0, 1, 3, -2]
global.cards = [noone, noone, noone, noone]
global.isEmpty = [true, true, true, true]
//Finished waves
global.wave_count = 0

instance_destroy(Obj_tower)
instance_destroy(Obj_enemy)
instance_destroy(Obj_card)
