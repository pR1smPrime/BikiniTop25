class_name Score
extends Label

func set_value(value : int) -> void:
	text = str(value) +  " €"

func _on_moveable_box_dmg_taken(new_value: int) -> void:
	set_value(new_value)

func _on_moveable_vase_dmg_taken(new_value: int) -> void:
	set_value(new_value)
