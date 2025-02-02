extends Node2D

@export var force := 1500.0
@export var shoot_frequence := 0.005
@export var time_to_pop := 1.5
@export var direction : Vector2

func _ready() -> void:
	var all_spawns := $BubbleSpawner.get_children()
	for spawner in all_spawns:
		spawner.force = force
		spawner.shoot_frequence = shoot_frequence
		spawner.time_to_pop = time_to_pop

func _process(_delta: float) -> void:
	var all_spawns := $BubbleSpawner.get_children()
	for spawner in all_spawns:
		spawner.spawn_bubble(direction)
