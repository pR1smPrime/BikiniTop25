extends Node

var SAVEPATH := "user://BTMS_scores.res"

# storing for each lvl best_time_ms, best left value, best score
@onready var save_data : SaveGame = SaveGame.new()

func set_highscore(lvl_nr: int, time_ms: int, item_value: int) -> void:
	if save_data.highscores_for_each_level.size() <= lvl_nr:
		save_data.highscores_for_each_level.append(LevelData.new())
	_check_n_set_highscore(time_ms, item_value, save_data.highscores_for_each_level[lvl_nr])
		
func _check_n_set_highscore(time_ms: int, item_value: int, level_data: LevelData) -> void:
	@warning_ignore("integer_division")
	var score := int(item_value / (time_ms / 1000))
	if level_data.time_ms < time_ms:
		level_data.time_ms = time_ms
	if level_data.value_score < item_value:
		level_data.value_score = item_value
	if level_data.total_score < score:
		level_data.total_score = score
	save()

func save() -> void:
	ResourceSaver.save(save_data, SAVEPATH)

func load() -> void:
	if ResourceLoader.exists(SAVEPATH):
		save_data = ResourceLoader.load(SAVEPATH)

	
	
