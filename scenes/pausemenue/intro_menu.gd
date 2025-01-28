extends Control

signal game_start

@onready var intro: Panel = $Intro


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	get_tree().paused = true
	intro.show()

func _on_button_pressed() -> void:
	get_tree().paused = false
	game_start.emit()
	intro.hide()


func _on_button_button_down() -> void:
	get_tree().paused = false
	game_start.emit()
	intro.hide()
