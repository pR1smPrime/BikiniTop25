extends Node2D

signal win(moveable: Moveable)

func _on_area_2d_win_condition_met(moveable: Moveable) -> void:
	win.emit(moveable)
