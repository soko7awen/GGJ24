extends Node2D
@onready var gameController = $"../.."

func _ready():
	setTransition(0)
	$"../BottomUI/Background".modulate = gameController.colorCipher[gameController.king[0]]

func setTransition(nextPlayer):
	$"../TopUI/Background".color = gameController.colorCipher[gameController.players[nextPlayer][0]]
	$"../TopUI/nameText".text = "[center]" + gameController.players[nextPlayer][1] + "[/center]"

func _on_start_button_pressed():
	$Camera2D.position.y += 972

func _on_finish_button_pressed():
	pass
