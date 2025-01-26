extends Node2D
class_name CombatOyster

@export var force := 1000.0
@export var bubble_node := preload("res://scenes/bubble_projectile/bubble.tscn")
@export var oyster_frequency := 0.05

@onready var shoot_timer := $Timer

func spawn_bubble():
	if shoot_timer.is_stopped():
		var direction := position.direction_to(Vector2.UP)
		var bubble := bubble_node.instantiate()
		add_child(bubble)
		direction = direction.rotated(randf_range(-0.2, 0.2))
		bubble.init(direction * force)
		shoot_timer.start(oyster_frequency)

func _process(_delta: float) -> void:
		spawn_bubble()
