extends CanvasLayer
signal animation_finished

func play_fade():
	$AnimationPlayer.play("fade_out")
	await $AnimationPlayer.animation_finished
	emit_signal("animation_finished")
	$AnimationPlayer.play("fade_in")
