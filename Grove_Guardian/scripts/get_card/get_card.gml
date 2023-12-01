function get_card(num){
	switch(num)
	{
	case -2:
        return Obj_card_source
    case 0:
        return Obj_card
    case 1:
        return Obj_card_shotgun
	case 2:
        return Obj_card_slow
	case 3:
        return Obj_card_buff
    default:
        return Obj_card_fertilizer
	}
}