class_name Level
extends Node2D

# Base Script for Level
# just so that level is of the same Class

# Jede neue Level muss diese Signale verbinden:

# TargetTruck win -> Level script
# PauseMenu game_start -> Clock
# Movable dmg_taken -> Score: Wenn ein neues Movable eingefüt wird, muss die neue Signalfunktion gefüllt werden wie diese hier:

# func _on_moveable_box_dmg_taken(new_value: int) -> void:
#	set_value(new_value)

# func _on_moveable_vase_dmg_taken(new_value: int) -> void:
#	set_value(new_value)
