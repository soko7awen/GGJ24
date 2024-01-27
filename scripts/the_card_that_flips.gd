extends Node2D
@onready var gameController = $".."
var toScene = "res://scenes/cutscenes/card_select.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	var main = get_tree().root.get_child(0)
	print(main.players.pick_random())
	main.loadScene(self,toScene)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
