extends Node2D
class_name BubbleSkull

@export var force := 1500.0
@export var bubble_node := preload("res://scenes/bubble_projectile/bubble.tscn")
@export var shoot_frequence := 0.03
@export var time_to_pop = 0.3

@onready var shoot_timer := $Timer

func spawn_bubble():
	if shoot_timer.is_stopped():
		var direction := position.direction_to(Vector2.RIGHT)
		var bubble := bubble_node.instantiate()
		add_child(bubble)
		direction = direction.rotated(randf_range(-0.1, 0.1))
		bubble.init(direction * force, time_to_pop)
		shoot_timer.start(shoot_frequence)

func _process(_delta: float) -> void:
	spawn_bubble()
