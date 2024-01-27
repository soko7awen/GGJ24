extends Node2D
@onready var gameController = $".."
var toScene = "res://scenes/cutscenes/card_select.tscn"
var colors = gameController.colorCipher

# Called when the node enters the scene tree for the first time.
func _ready():
	var main = get_tree().root.get_child(0)
	main.pickKing()
	$CanvasLayer/Label.text = main.king[1]
	$CanvasLayer/Label.set("theme_override_colors/font_color",colors[main.king[0]])
	#main.loadScene(self,toScene)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
