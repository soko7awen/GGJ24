extends Node2D
@onready var gameController = $".."
@onready var players = get_node("UI/Players")
@onready var camera = get_node("Camera")
var toScene = "res://scenes/cutscenes/the_card_that_flips.tscn"
var player = 1

func _process(delta):
	for i in players.get_children():
		print(i.get_child(1).text)

func _on_right_button_pressed():
	camera.position.x += 1152
	
func _on_left_button_pressed():
	camera.position.x -= 1152

func _on_start_button_pressed():
<<<<<<< Updated upstream
	$"..".loadScene(self,toScene)

=======
	var main = get_tree().root.get_child(0)

	main.loadScene(self,toScene)
>>>>>>> Stashed changes
