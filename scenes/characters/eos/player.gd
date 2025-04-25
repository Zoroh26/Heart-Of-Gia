extends CharacterBody2D

@export var move_speed := 300
@export var joystick_deadzone := 0.2

func _physics_process(delta):
	var input_vector := Vector2.ZERO
	
	# Joystick input (works with gamepad or touch controls)
	input_vector.x = Input.get_axis("move_left", "move_right")
	input_vector.y = Input.get_axis("move_up", "move_down")
	
	# Apply deadzone
	if input_vector.length() > joystick_deadzone:
		velocity = input_vector.normalized() * move_speed
	else:
		velocity = Vector2.ZERO
	
	move_and_slide()
