extends Area2D

var moveable : Moveable

func _process(_delta: float) -> void:
	if moveable != null:
		if overlaps_body(moveable):
			if moveable.linear_velocity.length() < 0.0001:
				get_tree().change_scene_to_file("res://scenes/victory_screen/victory_screen.tscn")

func _on_body_entered(body: Node2D) -> void:
	if body is Moveable:
		moveable = body

func _on_body_exited(body: Node2D) -> void:
	if body == moveable:
		moveable = null
