extends CanvasLayer


func _on_button_pressed():
	print("Button clicked!")  # Test if working
	get_tree().change_scene_to_file("res://scenes/environments/guardian_biome/guardian_biome.tscn")  # Load next scene
