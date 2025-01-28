extends Node

# storing for each lvl best_time_ms, best left value, best score
var highscore_lvl0 = [0,0,0]
var highscore_lvl1 = [0,0,0]
var highscore_lvl2 = [0,0,0]
var highscore_lvl3 = [0,0,0]
var highscore_lvl4 = [0,0,0]
var highscore_lvl5 = [0,0,0]
var highscore_lvl6 = [0,0,0]

func set_highscore(lvl_nr: int, time_ms: int, item_value: int) -> void:
	match lvl_nr:
		0: _check_n_set_highscore(time_ms, item_value, highscore_lvl0)
		
func _check_n_set_highscore(time_ms: int, item_value: int, highscore_tuple: Array) -> void:
	var score := time_ms + item_value
	
	if highscore_tuple[0] < time_ms:
		highscore_tuple[0] = time_ms
	if highscore_tuple[1] < item_value:
		highscore_tuple[1] = item_value
	if highscore_tuple[2] < score:
		highscore_tuple[2] = score
