extends CanvasLayer

@onready var start_button = $StartButton
@onready var quit_button = $QuitButton

func _ready():
	# Connect buttons safely
	if start_button:
		start_button.pressed.connect(_on_start_button_pressed)
	else:
		push_error("StartButton node missing!")
	
	if quit_button:
		quit_button.pressed.connect(_on_quit_button_pressed)
	else:
		push_error("QuitButton node missing!")

func _on_start_button_pressed():
	print("Starting game...")
	
	# Optional transition effect
	if has_node("AnimationPlayer"):
		$AnimationPlayer.play("fade_out")
		await $AnimationPlayer.animation_finished
	
	# Load scene with error checking
	var scene_path = "res://scenes/environments/forge_biome/map.tscn"
	if ResourceLoader.exists(scene_path):
		get_tree().change_scene_to_file(scene_path)
	else:
		push_error("Scene not found: ", scene_path)

func _on_quit_button_pressed():
	print("Quitting game...")
	get_tree().quit()  # Close the game window
