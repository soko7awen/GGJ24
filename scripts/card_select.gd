extends Node2D
@onready var gameController = $".."
var nextMinigame = randi_range(1,1)
var tarotSprite
var toScene

func _ready():
	while(nextMinigame == gameController.lastMinigame):
		nextMinigame = randi_range(1,5)
	match nextMinigame:
		1:
			# punchline picker !
			tarotSprite = "res://assets/sprites/jesters/jester_blue.png"
			toScene = "res://scenes/minigames/punchline.tscn"
		2:
			#setup sextant!
			pass
		3:
			#free write !
			pass
		5:
			#whose line is it anyway! continuous
			pass
	gameController.lastMinigame = nextMinigame

func revealCard():
	$RevealedCard.texture = load(tarotSprite)
	for i in $UI.get_child_count():
		$UI.get_child(i).disabled = true
	$reminderText.visible = false
	await get_tree().create_timer(3.0).timeout
	gameController.loadScene(self,toScene)
