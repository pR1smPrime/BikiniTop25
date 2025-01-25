class_name MainMenu
extends Control

signal newgame

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level1.tscn")


func _on_exit_pressed() -> void:
	get_tree().quit()
	
func _ready():
	$AnimationPlayer.play("logo_Wiggle")
