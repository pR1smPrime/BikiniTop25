extends CharacterBody2D

@export_category("Character Movement")
@export var SPEED := 250.0
@export var JUMP_VELOCITY := -900.0

@export_category("Bubblegun Behavior")
@export var force := 1500.0
@export var shoot_frequence := 0.005
@export var time_to_pop := 1.5

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var sprite_2d: AnimatedSprite2D = $Sprite2D

func _ready() -> void:
	$BubbleBeamer.force = force
	$BubbleBeamer.shoot_frequence = shoot_frequence
	$BubbleBeamer.time_to_pop = time_to_pop
	
func _physics_process(delta: float) -> void:
	#Animations
	if (velocity.x > 1 || velocity.x < -1):
		sprite_2d.animation = "running"
	else:
		sprite_2d.animation = "default"

	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta 
		sprite_2d.animation = "jumping"

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	if Input.is_action_just_pressed("left"):

		sprite_2d.flip_h = true

	if Input.is_action_just_pressed("right"):

		sprite_2d.flip_h = false
	
