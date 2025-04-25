extends Area2D
var entered = false;

func _on_body_entered(body:PhysicsBody2D):
	entered = true


func _on_body_exited(body: Node2D) -> void:
	entered = false
	
func _process(delta):
	if entered==true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene_to_file("res://scenes/environments/forge_biome/map.tscn")
