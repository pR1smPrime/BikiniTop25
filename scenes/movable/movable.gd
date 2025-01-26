extends RigidBody2D
class_name Moveable

@export var value : int
@export var dmg_force_threshold : float
signal dmg_taken(new_value: int)

var current_value := value

func breakMoveable() -> void:
	if current_value < value * 0.75:
		$Sprite2D.texture = load("res://assets/art/spritesObjects/tx_object_vase_dmg1.png")
	elif current_value < value * 0.5:
		$Sprite2D.texture = load("res://assets/art/spritesObjects/tx_object_vase_dmg2.png")
	elif current_value < value * 0.25:
		$Sprite2D.texture = load("res://assets/art/spritesObjects/tx_object_vase_dmg3.png")
	elif current_value == 0:
		print("fail")

func _on_body_entered(body: Node) -> void:
	print(body.get_class())
	if(body is Bubble):
		return
	if(linear_velocity.length() > dmg_force_threshold):
		current_value -= int(linear_velocity.length() * 3)
		if current_value < 0:
			current_value = 0
		dmg_taken.emit(current_value)
	breakMoveable()
