extends Node2D
class_name BubbleSpawner

@export var force := 1500.0
@export var shoot_frequence := 0.005
@export var time_to_pop := 1.5
@export var direction : Vector2

@onready var bubble_node := preload("res://scenes/bubble_projectile/bubble.tscn")
@onready var shoot_timer := $ShootFrequency

func spawn_bubble(direction: Vector2):
	if shoot_timer.is_stopped():
		var bubble := bubble_node.instantiate()
		add_child(bubble)
		direction = direction.rotated(randf_range(-0.2, 0.2))
		bubble.init(direction * force, time_to_pop)
		shoot_timer.start(shoot_frequence)
