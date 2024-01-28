extends Node2D
@onready var main = get_tree().root.get_child(0)
@onready var toScene = "res://scenes/cutscenes/the_card_that_flips.tscn"

func _ready():
	for i in main.players:
		$CanvasLayer/Control/Jesters.get_child(i[0]).visible = true
	$CanvasLayer/Control/Jesters/WinnerCrown.global_position = $CanvasLayer/Control/Jesters.get_child(main.king[0]).global_position
	await get_tree().create_timer(5.0).timeout
	#check if someone wins, else:
	main.loadScene(self,toScene)
