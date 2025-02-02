class_name LevelData
extends Resource
# Purose:
# Data Class used to store highscore for each level
# If GlobalGameManager.highscores_for_each_level[x] exists, level got beaten
@export var level_name : String
@export var level_number : int
# @export var level_available := false
@export var level_scene_path : String

@export var time_ms := 0
@export var value_score := 0
@export var total_score := 0
