extends RigidBody2D


func init(bubble_velocity : Vector2) -> void:
	linear_velocity = bubble_velocity
	
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Bubble.play()

func _on_time_to_pop_timeout() -> void:
	# pop animation
	$Pop.play()
	
	queue_free()
