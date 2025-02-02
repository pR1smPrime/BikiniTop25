class_name Moveable
extends RigidBody2D

# connected in level
@warning_ignore("unused_signal")
signal level_failed
# connected in level
@warning_ignore("unused_signal")
signal dmg_taken(new_value: int)

@export var value : int
@export var dmg_force_threshold : float
@export var dmg_recieved_multiplier : float = 1.0 # force is around 100-200 on impact. Use to make it harder.

@onready var current_value := value

func breakMoveable() -> void:
	print("IMPLEMENT func breakMoveable() -> void: FOR NEW MOVABLE")
