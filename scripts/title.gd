extends Node
var toScene = "res://scenes/player_select.tscn"

func _on_play_button_pressed():
	get_tree().root.get_child(0).loadScene(self,toScene)

func _on_quit_button_pressed():
	get_tree().quit()
