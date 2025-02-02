extends Node2D


func _process(delta: float) -> void:
	if Input.is_action_pressed("LeftMouse"):
		var direction := position.direction_to(get_local_mouse_position())
		rotation = direction.angle()
	if Input.get_vector("aim_left_gamepad", "aim_right_gamepad", "aim_up_gamepad", "aim_down_gamepad"):
		var direction := Input.get_vector("aim_left_gamepad", "aim_right_gamepad", "aim_up_gamepad", "aim_down_gamepad")
		rotation = direction.angle_to_point(position)
