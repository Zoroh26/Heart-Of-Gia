extends CharacterBody2D

@export var move_speed := 600
@export var joystick_deadzone := 0.2
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
var facing_left := false

func _ready():
	# Safety check and initialization
	if not animated_sprite:
		push_error("AnimatedSprite2D node missing!")
		return
		
	# Ensure sprite frames exist
	if not animated_sprite.sprite_frames:
		animated_sprite.sprite_frames = SpriteFrames.new()
		push_warning("Created empty SpriteFrames - add animations!")

func _physics_process(delta):
	var input_vector := Vector2.ZERO
	input_vector.x = Input.get_axis("move_left", "move_right")
	input_vector.y = Input.get_axis("move_up", "move_down")

	
	# Only process if animated_sprite exists
	if not animated_sprite:
		return
		
	if input_vector.length() > joystick_deadzone:
		velocity = input_vector.normalized() * move_speed
		facing_left = input_vector.x < 0
		
		# Safe animation handling
		if animated_sprite.sprite_frames.has_animation("walk"):
			animated_sprite.play("walk")
			animated_sprite.flip_h = facing_left
		else:
			push_error("Missing 'walk' animation!")
	else:
		velocity = Vector2.ZERO
		if animated_sprite.sprite_frames.has_animation("idle"):
			animated_sprite.play("idle")
			animated_sprite.flip_h = facing_left  # Maintain facing direction
		else:
			push_error("Missing 'idle' animation!")
	
	move_and_slide()
