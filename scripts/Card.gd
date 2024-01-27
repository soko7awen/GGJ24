extends TextureButton

func _on_pressed():
	$"../..".revealCard()
	queue_free()

func _on_mouse_entered():
	position.y -= 40

func _on_mouse_exited():
	position.y += 40
