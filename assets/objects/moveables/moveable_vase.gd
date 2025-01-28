extends Moveable

func breakMoveable() -> void:
	if current_value < value * 0.75:
		$Sprite2D.texture = load("res://assets/art/spritesObjects/tx_object_vase_dmg1.png")
	elif current_value < value * 0.5:
		$Sprite2D.texture = load("res://assets/art/spritesObjects/tx_object_vase_dmg2.png")
	elif current_value < value * 0.25:
		$Sprite2D.texture = load("res://assets/art/spritesObjects/tx_object_vase_dmg3.png")
	elif current_value == 0:
		get_tree().change_scene_to_file("res://scenes/fail_screen/fail_screen.tscn")

func _on_body_entered(body: Node) -> void:
	print(body.get_class())
	if(body is Bubble):
		return
	if(linear_velocity.length() > dmg_force_threshold):
		print(linear_velocity.length())
		current_value -= int(linear_velocity.length())
		if current_value < 0:
			current_value = 0
		dmg_taken.emit(current_value)
	breakMoveable()
