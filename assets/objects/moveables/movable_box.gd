extends Moveable

func breakMoveable() -> void:
	if current_value < value * 0.75:
		$Sprite2D.texture = load("res://assets/art/spritesObjects/tx_object_vase_dmg1.png")
	elif current_value < value * 0.5:
		$Sprite2D.texture = load("res://assets/art/spritesObjects/tx_object_vase_dmg2.png")
	elif current_value < value * 0.25:
		$Sprite2D.texture = load("res://assets/art/spritesObjects/tx_object_vase_dmg3.png")
	elif current_value == 0:
		print("fail")
