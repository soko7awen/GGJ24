extends Node2D
@onready var main = get_tree().root.get_child(0)
@onready var toScene = "res://scenes/cutscenes/the_card_that_flips.tscn"

func _ready():
	for i in main.players:
		$Jesters.get_child(i[0]).visible = true
	await get_tree().create_timer(5.0).timeout
	#check if someone wins, else:
	main.loadScene(self,toScene)
