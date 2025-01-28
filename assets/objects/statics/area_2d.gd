extends Area2D

signal win_condition_met(moveable: Moveable)

var moveable : Moveable

func _process(_delta: float) -> void:
	if moveable != null:
		if overlaps_body(moveable):
			if moveable.linear_velocity.length() < 0.0001:
				PreviousScene.scene = get_tree().current_scene.name
				win_condition_met.emit(moveable)

func _on_body_entered(body: Node2D) -> void:
	if body is Moveable:
		moveable = body

func _on_body_exited(body: Node2D) -> void:
	if body == moveable:
		moveable = null
