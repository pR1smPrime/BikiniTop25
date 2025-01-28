extends RigidBody2D
class_name Bubble


func init(bubble_velocity : Vector2, time_to_pop : float = 1.5) -> void:
	linear_velocity = bubble_velocity
	$TimeToPop.start(time_to_pop)

func _ready() -> void:
	$Bubble.play()

func pop_bubble() -> void:
	# pop animation
	$Pop.play()
	queue_free()

func _on_time_to_pop_timeout() -> void:
	pop_bubble()
