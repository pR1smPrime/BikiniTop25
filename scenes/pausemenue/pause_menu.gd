extends Control

@onready var pause_panel: Panel = $PausePanel


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("pause"):
		get_tree().paused = true
		pause_panel.show()

func _on_resume_pressed() -> void:
	pause_panel.hide()
	get_tree().paused = false

func _on_retry_pressed() -> void:
	get_tree().paused = false
	var _reload = get_tree().reload_current_scene()


func _on_exit_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://bikini_toppem_moving_service.tscn")
