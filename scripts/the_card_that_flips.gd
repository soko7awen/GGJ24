extends Node2D
@onready var gameController = $".."
var toScene = "res://scenes/cutscenes/card_select.tscn"
var colorCipher = [Color8(255,0,77),Color8(41,173,255),Color8(0,228,54),Color8(0,236,39),Color8(255,163,0),Color8(255,119,168)]

# Called when the node enters the scene tree for the first time.
func _ready():
	var main = get_tree().root.get_child(0)
	main.pickKing()
	$CanvasLayer/Label.text = main.king[1]
	$CanvasLayer/Label.set("theme_override_colors/font_color",colorCipher[main.king[0]])
	#main.loadScene(self,toScene)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
