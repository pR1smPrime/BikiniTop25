extends Node2D
class_name BubbleBeamer

@export var force := 1000.0
@export var bubble_node := preload("res://bubble/bubble.tscn")
@export var shoot_frequence := 0.1

@onready var shoot_timer := $ShootFrequence

func spawn_bubble():
	if shoot_timer.is_stopped():
		var direction := position.direction_to(get_global_mouse_position()).normalized()
		var bubble := bubble_node.instantiate()
		add_child(bubble)
		bubble.init(direction*force)
		shoot_timer.start(shoot_frequence)

func _process(delta: float) -> void:
	if Input.is_action_pressed("LeftMouse"):
		spawn_bubble()
