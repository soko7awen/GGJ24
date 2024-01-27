extends TextureButton

func _on_pressed():
	$"../..".revealCard()
	queue_free()
