extends CanvasLayer

@onready var music_player: AudioStreamPlayer = $MusicPlayer
@onready var start_button: Button = $StartButton
@onready var quit_button: Button = $QuitButton
@onready var hover_sound: AudioStreamPlayer = $HoverSound

<<<<<<< Updated upstream
# Preload sounds to avoid null errors
const HOVER_SOUND = preload("res://assets/audio/startpage/hoverSound.mp3")
=======
func _on_button_pressed():
	print("Button clicked!")  # Test if working
	get_tree().change_scene_to_file("res://scenes/environments/forge_biome/map.tscn")  # Load next scene
>>>>>>> Stashed changes

func _ready():
	# Initialize music with looping
	var music = load("res://assets/audio/startpage/startpage.ogg")
	if music:
		music_player.stream = music
		music_player.volume_db = -25.0
		music_player.autoplay = true
		music_player.finished.connect(_on_music_finished)
		music_player.play()
	else:
		push_error("Missing music file")
	
	# Verify and connect buttons
	if start_button:
		start_button.pressed.connect(_on_start_button_pressed)
		start_button.mouse_entered.connect(_on_button_hover)
	
	if quit_button:
		quit_button.pressed.connect(_on_quit_button_pressed)
		quit_button.mouse_entered.connect(_on_button_hover)
	
	# Safety check for sound nodes
	if not hover_sound:
		push_warning("HoverSound node missing - create an AudioStreamPlayer named 'HoverSound'")

func _on_music_finished():
	music_player.play()  # Seamless loop

func _on_button_hover():
	if hover_sound and HOVER_SOUND:
		hover_sound.stream = HOVER_SOUND
		hover_sound.volume_db = -15.0
		hover_sound.play()

func _on_start_button_pressed():
	# Fade out music before transition
	create_tween()\
		.tween_property(music_player, "volume_db", -80.0, 0.5)\
		.finished.connect(
			func(): 
				if ResourceLoader.exists("res://scenes/environments/forge_biome/map.tscn"):
					get_tree().change_scene_to_file("res://scenes/environments/forge_biome/map.tscn")
				)

func _on_quit_button_pressed():
	# Fade out before quitting
	create_tween()\
		.tween_property(music_player, "volume_db", -80.0, 0.5)\
		.finished.connect(get_tree().quit)
