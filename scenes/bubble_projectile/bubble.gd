extends RigidBody2D
class_name Bubble

@export var time_to_pop := 1.5

func init(bubble_velocity : Vector2) -> void:
	linear_velocity = bubble_velocity
	$TimeToPop.wait_time = time_to_pop

func _ready() -> void:
	$Bubble.play()
	$TimeToPop.wait_time = time_to_pop

func pop_bubble() -> void:
	# pop animation
	$Pop.play()
	queue_free()

func _on_time_to_pop_timeout() -> void:
	pop_bubble()
