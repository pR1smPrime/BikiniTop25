extends RigidBody2D

func init(bubble_velocity : Vector2) -> void:
	linear_velocity = bubble_velocity
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


func _on_time_to_pop_timeout() -> void:
	# pop animation
	queue_free()
