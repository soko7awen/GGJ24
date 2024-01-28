extends Node2D
@onready var main = get_tree().root.get_child(0)
@onready var input = $"../BottomUI/input"
var player = 0
var responses = []
var toScene = "res://scenes/judgement.tscn"

func _ready():
	checkIfKing()
	setTransition(player)
	$"../BottomUI/Background".modulate = main.colorCipher[main.king[0]]

func setTransition(nextPlayer):
	$"../TopUI/Background".color = main.colorCipher[main.players[nextPlayer][0]]
	$"../TopUI/nameText".text = "[center]" + main.players[nextPlayer][1] + "[/center]"

func _on_start_button_pressed():
	$"../Camera2D".position.y += 972
	input.grab_focus()

func _on_finish_button_pressed():
	$"../Camera2D".position.y -= 972
	responses.append([int(player), input.text])
	player += 1
	checkIfKing()
	if(player >= main.players.size()):
		main.lastResponses = responses
		main.loadScene($"..",toScene)
	else:
		setTransition(player)
		input.text = ""
		input.grab_focus()
		input.release_focus()

func checkIfKing():
	if(player == main.king[0]):
		player += 1
