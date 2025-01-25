extends Moveable

@export var max_health = 4
var current_health = max_health
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func breakMoveable() -> void:
	match current_health:
		4: 
			$Sprite2D.texture = load("res://assets/art/spritesObjects/tx_object_vase.png")
		3:
			$Sprite2D.texture = load("res://assets/art/spritesObjects/tx_object_vase_dmg1.png")
		2:
			$Sprite2D.texture = load("res://assets/art/spritesObjects/tx_object_vase_dmg2.png")
		1:
			$Sprite2D.texture = load("res://assets/art/spritesObjects/tx_object_vase_dmg3.png")
		0:
			print("fail")
		

func _on_body_entered(body: Node) -> void:
	print(body.get_class())
	if(body is Bubble):
		return
	if(abs(angular_velocity) > 1):
		current_health -= 1
	breakMoveable()
