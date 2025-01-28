class_name Moveable
extends RigidBody2D

signal level_failed
signal dmg_taken(new_value: int)

@export var value : int
@export var dmg_force_threshold : float

@onready var current_value := value

func breakMoveable() -> void:
	print("IMPLEMENT func breakMoveable() -> void: FOR NEW MOVABLE")
