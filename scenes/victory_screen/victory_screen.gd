extends Control

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/mainmenue/main_menu.tscn") # Replace with function body.


func _on_next_level_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level" + str(int(PreviousScene.scene) + 1 ) + ".tscn") 
