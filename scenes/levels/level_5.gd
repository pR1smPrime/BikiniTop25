extends Level


func _ready() -> void:
	$Score.set_value($MoveableBox.value)

func _on_target_truck_win(moveable: Moveable) -> void:
	GlobalGameManager.set_highscore(5, $Clock.total_time_ms, moveable.current_value)
	get_tree().change_scene_to_file("res://scenes/victory_screen/victory_screen.tscn")
