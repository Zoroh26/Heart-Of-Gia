extends Node

var music_player: AudioStreamPlayer

func _ready():
	music_player = AudioStreamPlayer.new()
	add_child(music_player)
	play_music("res://audio/music/main_menu.ogg")

func play_music(path: String):
	if ResourceLoader.exists(path):
		music_player.stream = load(path)
		music_player.play()
	else:
		push_error("Music file not found: ", path)

func stop_music():
	music_player.stop()
