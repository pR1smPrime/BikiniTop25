extends Node2D
class_name BubbleChest

@export var force := 1500.0
@export var bubble_node := preload("res://scenes/bubble_projectile/bubble.tscn")
@export var shoot_frequence := 0.005

@onready var shoot_timer := $Timer

func spawn_bubble():
	if shoot_timer.is_stopped():
		var direction := position.direction_to(Vector2.UP)
		var bubble := bubble_node.instantiate()
		add_child(bubble)
		direction = direction.rotated(randf_range(-0.2, 0.2))
		bubble.init(direction * force)
		shoot_timer.start(shoot_frequence)

func _process(_delta: float) -> void:
	spawn_bubble()
