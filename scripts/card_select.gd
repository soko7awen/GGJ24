extends Node2D
@onready var gameController = $".."
var nextMinigame = randi_range(1,1)
var tarotSprite
var toScene

func _ready():
	while(nextMinigame == gameController.lastMinigame):
		nextMinigame = randi_range(1,4)
	match nextMinigame:
		1:
			# punchline picker !
			tarotSprite = "res://assets/sprites/cards/tarot_punchline.png"
			toScene = "res://scenes/minigames/punchline.tscn"
		2:
			#setup sextant!
			tarotSprite = "res://assets/sprites/cards/tarot_buildup.png"
			toScene = "res://scenes/minigames/setup.tscn"
		3:
			#free write !
			tarotSprite = "res://assets/sprites/cards/tarot_freewrite.png"
			toScene = "res://scenes/minigames/freewrite.tscn"
		4:
			#whose line is it anyway! continuous
			tarotSprite = "res://assets/sprites/cards/tarot_kinggambit.png"
			toScene = "res://scenes/minigames/follow.tscn"
	gameController.lastMinigame = nextMinigame

func revealCard():
	$RevealedCard.texture = load(tarotSprite)
	for i in $UI.get_child_count():
		$UI.get_child(i).disabled = true
	$reminderText.visible = false
	await get_tree().create_timer(3.0).timeout
	gameController.loadScene(self,toScene)
