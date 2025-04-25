extends CharacterBody2D

@export var move_speed := 600
@export var joystick_deadzone := 0.2

func _ready():
	add_to_group("player")  # Correct placement outside physics_process
	print("Player initialized - Groups:", get_groups())  # Debug

func _physics_process(delta):
	var input_vector := Vector2.ZERO
	
	# Input handling
	input_vector.x = Input.get_axis("move_left", "move_right")
	input_vector.y = Input.get_axis("move_up", "move_down")
	
	# Movement logic
	if input_vector.length() > joystick_deadzone:
		velocity = input_vector.normalized() * move_speed
	else:
		velocity = Vector2.ZERO
	
	move_and_slide()
