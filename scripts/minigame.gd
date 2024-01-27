extends Node2D
@onready var gameController = $".."

func _ready():
	setTransition(gameController.players[0])

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func setTransition(nextPlayer):
	$"../Background".color = gameController.colorCipher[nextPlayer]
