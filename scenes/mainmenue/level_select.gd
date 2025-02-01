extends Control

func _ready() -> void:
	check_level_available()

func check_level_available() -> void:
	var level_button_array : Array[Button]= [
		$"MarginContainer/HBoxContainer/VBoxContainer/Level 1",
		$"MarginContainer/HBoxContainer/VBoxContainer/Level 2",
		$"MarginContainer/HBoxContainer/VBoxContainer/Level 3",
		$"MarginContainer/HBoxContainer/VBoxContainer/Level 4",
		$"MarginContainer/HBoxContainer/VBoxContainer/Level 5",
		$"MarginContainer/HBoxContainer/VBoxContainer/Level 6",
		]
	for i in GlobalGameManager.save_data.highscores_for_each_level.size():
		if i < level_button_array.size():
			level_button_array[i].disabled = false
			

func _on_tutorial_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level0.tscn")

func _on_level_1_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level1.tscn")

func _on_level_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level2.tscn")

func _on_level_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level3.tscn")

func _on_level_4_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level4.tscn")

func _on_level_5_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level5.tscn")
	
func _on_level_6_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level6.tscn")

func _on_back_to_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/mainmenue/main_menu.tscn")


func _on_tree_entered() -> void:
	# Used to always check button disable on reload
	check_level_available()
