extends Node
var toScene = "res://scenes/player_select.tscn"

func _on_start_button_pressed():
	$"..".loadScene(toScene)

func _on_quit_button_pressed():
	get_tree().quit()
