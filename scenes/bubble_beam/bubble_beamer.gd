extends Node2D
class_name BubbleBeamer

@export var force := 1500.0
@export var shoot_frequence := 0.005
@export var time_to_pop := 1.5

@onready var bubble_node := preload("res://scenes/bubble_projectile/bubble.tscn")

func _ready() -> void:
	$BubbleSpawner.force = force
	$BubbleSpawner.shoot_frequence = shoot_frequence
	$BubbleSpawner.time_to_pop = time_to_pop
	
func _process(_delta: float) -> void:
	if Input.is_action_pressed("LeftMouse"):
		var direction := position.direction_to(get_local_mouse_position())
		$BubbleSpawner.spawn_bubble(direction)
	if Input.get_vector("aim_left_gamepad", "aim_right_gamepad", "aim_up_gamepad", "aim_down_gamepad"):
		var direction := Input.get_vector("aim_left_gamepad", "aim_right_gamepad", "aim_up_gamepad", "aim_down_gamepad")
		$BubbleSpawner.spawn_bubble(direction)
	
