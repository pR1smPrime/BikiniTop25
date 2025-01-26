extends Node


var highscore_lvl0 = [0,0,0]
var highscore_lvl1 = [0,0,0]
var highscore_lvl2 = [0,0,0]
var highscore_lvl3 = [0,0,0]
var highscore_lvl4 = [0,0,0]
var highscore_lvl5 = [0,0,0]
var highscore_lvl6 = [0,0,0]

func set_highscore(lvl_nr: int, score: int) -> void:
	match lvl_nr:
		0: _check_n_set_highscore(score, highscore_lvl0)
		
func _check_n_set_highscore(score: int, highscore_tuple: Array[int]) -> void:
	var index_tuple := 0
	for highscore in highscore_tuple:
		if score > highscore:
			highscore_tuple.insert(index_tuple, score)
			highscore_tuple.pop_back()
		index_tuple += 1
