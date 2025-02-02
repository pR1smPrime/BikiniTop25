extends Node2D
class_name BubbleSpawner

@export var force := 1500.0
@export var shoot_frequence := 0.005
@export var time_to_pop := 1.5

@onready var bubble_node := preload("res://scenes/bubble_projectile/bubble.tscn")

func spawn_bubble(direction_arg: Vector2):
	if $ShootFrequency.is_stopped():
		var bubble := bubble_node.instantiate()
		add_child(bubble)
		direction_arg = direction_arg.rotated(randf_range(-0.2, 0.2))
		bubble.init(direction_arg * force, time_to_pop)
		$ShootFrequency.start(shoot_frequence)
