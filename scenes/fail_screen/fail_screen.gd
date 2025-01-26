extends Control
class_name FailScreen


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/mainmenue/main_menu.tscn") # Replace with function body.


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/mainmenue/level_select.tscn") # Replace with function body.
