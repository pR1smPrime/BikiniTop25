extends Node2D
class_name BubbleBeamer

@export var force := 1500.0
@export var bubble_node := preload("res://scenes/bubble_projectile/bubble.tscn")
@export var shoot_frequence := 0.005
@export var time_to_pop := 1.5

@onready var shoot_timer := $ShootFrequence

func spawn_bubble(direction: Vector2):
	if shoot_timer.is_stopped():
		var bubble := bubble_node.instantiate()
		add_child(bubble)
		direction = direction.rotated(randf_range(-0.2, 0.2))
		bubble.init(direction * force, time_to_pop)
		shoot_timer.start(shoot_frequence)

func _process(_delta: float) -> void:
	if Input.is_action_pressed("LeftMouse"):
		var direction := position.direction_to(get_local_mouse_position())
		spawn_bubble(direction)
	if Input.get_vector("aim_left_gamepad", "aim_right_gamepad", "aim_up_gamepad", "aim_down_gamepad"):
		var direction := Input.get_vector("aim_left_gamepad", "aim_right_gamepad", "aim_up_gamepad", "aim_down_gamepad")
		spawn_bubble(direction)
	
