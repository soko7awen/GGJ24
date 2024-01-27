extends Node2D
@onready var gameController = $".."
var nextMinigame = randi_range(1,5)

func _ready():
	while(nextMinigame != gameController.lastMinigame):
		nextMinigame = randi_range(1,5)	
