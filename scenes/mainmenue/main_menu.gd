class_name MainMenu
extends Control

func _ready() -> void:
	GlobalGameManager.load()
	#$AnimationPlayer.play("logo_Wiggle")

func _on_play_pressed() -> void:
	var next_level_to_beat := GlobalGameManager.save_data.highscores_for_each_level.size()
	get_tree().change_scene_to_file("res://scenes/levels/level" + str(next_level_to_beat) + ".tscn")
	
func _on_level_select_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/mainmenue/level_select.tscn") # Replace with function body.

func _on_exit_pressed() -> void:
	get_tree().quit()
	
func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/credits/credits.tscn")
