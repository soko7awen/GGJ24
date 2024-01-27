extends Node2D
@onready var gameController = $".."
var nextMinigame = randi_range(1,5)
var tarotSprite

func _ready():
	while(nextMinigame != gameController.lastMinigame):
		nextMinigame = randi_range(1,5)
	match nextMinigame:
		1:
			# punchline picker !
			tarotSprite = ""
			
		2:
			#setup sextant!
			pass
		3:
			#free write !
			pass
		4:
			#apples to apples.
			pass
		5:
			#whose line is it anyway! continuous
			pass
	gameController.lastMinigame = nextMinigame

