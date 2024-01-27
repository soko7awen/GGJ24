extends Node
var toScene = "game"

func _on_start_button_pressed():
	pass # call the fuckin scene loader to Load the Scene

func _on_quit_button_pressed():
	get_tree().quit()
