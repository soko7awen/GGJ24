extends Node2D
@onready var gameController = $".."
@onready var players = get_node("UI/Players")
var toScene = "res://scenes/cutscenes/the_card_that_flips.tscn"
var player = 1

func _process(delta):
	pass

func _on_right_button_pressed():
	pass

func _on_start_button_pressed():
	$"..".loadScene(self,toScene)
