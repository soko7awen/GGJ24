extends Node2D
@onready var gameController = $"../.."
@onready var input = $"../BottomUI/input"
var player = 0
var responses = []
var toScene = "res://scenes/judgement.tscn"

func _ready():
	checkIfKing()
	setTransition(player)
	$"../BottomUI/Background".modulate = gameController.colorCipher[gameController.king[0]]

func setTransition(nextPlayer):
	$"../TopUI/Background".color = gameController.colorCipher[gameController.players[nextPlayer][0]]
	$"../TopUI/nameText".text = "[center]" + gameController.players[nextPlayer][1] + "[/center]"

func _on_start_button_pressed():
	$"../Camera2D".position.y += 972
	input.grab_focus()

func _on_finish_button_pressed():
	$"../Camera2D".position.y -= 972
	responses.append([int(player), input.text])
	if((player + 1) > gameController.players.size()):
		gameController.loadScene(self,toScene)
	else:
		player += 1
		checkIfKing()
		setTransition(player)
		input.text = ""
		input.grab_focus()
		input.release_focus()

func checkIfKing():
	if(player == gameController.king[0]):
		player += 1
