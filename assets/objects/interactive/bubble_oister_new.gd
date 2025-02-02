extends Node2D

@export var force := 1500.0
@export var shoot_frequence := 0.005
@export var time_to_pop := 1.5
@export var direction : Vector2

func _ready() -> void:
	$BubbleSpawner.force = force
	$BubbleSpawner.shoot_frequence = shoot_frequence
	$BubbleSpawner.time_to_pop = time_to_pop
	
func _process(delta: float) -> void:
	$BubbleSpawner.spawn_bubble(direction)
