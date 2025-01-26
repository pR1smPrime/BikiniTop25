extends Level


func _ready() -> void:
	$Score.set_value($MovableObj.value)

func _on_target_truck_win(moveable: Moveable) -> void:
	highscore = moveable.current_value / ($Clock.total_time_ms / 1000)
	GlobalGameManager.set_highscore(5, highscore)
