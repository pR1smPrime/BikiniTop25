extends Node

signal game_start

@onready var pause_panel: Panel = $PausePanel
@onready var intro: Panel = $Intro

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	intro.show()
	get_tree().paused = true
	$Intro/Button.grab_focus()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	var esc_pressed = Input.is_action_just_pressed("pause")
	if(esc_pressed == true):
		get_tree().paused = true
		$PausePanel/VBoxContainer/Resume.grab_focus()
		pause_panel.show()

func _on_resume_pressed() -> void:
	pause_panel.hide()
	$PausePanel/VBoxContainer/Resume.release_focus()
	get_tree().paused = false

func _on_retry_pressed() -> void:
	get_tree().paused = false
	$PausePanel/VBoxContainer/Resume.release_focus()
	var _reload = get_tree().reload_current_scene()

func _on_exit_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://bikini_toppem_moving_service.tscn")

func _on_button_button_down() -> void:
	get_tree().paused = false
	game_start.emit()
	$Intro/Button.release_focus()
	intro.hide()
