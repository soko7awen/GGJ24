extends Node2D
@onready var gameController = get_tree().root.get_node("main")
@onready var input = get_tree().root.get_node("main/Playerselect/UI/PlayerInput")
@onready var text = get_tree().root.get_node("main/Playerselect/UI/PlayerText")
var player = 1

func _process(delta):
	pass

func _on_next_button_pressed():
	if(input.text.length() > 0):
		gameController.players.append(input.text)
		input.text = ""
		player += 1
		text.text = "Input Player " + str(player) + " Name"
	else:
		pass #handle no input
