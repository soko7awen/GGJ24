extends Node2D
@onready var main = get_tree().root.get_child(0)
var toScene = "res://scenes/cutscenes/card_select.tscn"
@onready var colors = main.colorCipher

# Called when the node enters the scene tree for the first time.
func _ready():
	main.pickKing()
	$CanvasLayer/Control/Label.text = main.king[1]
	$CanvasLayer/Control/Label.set("theme_override_colors/font_color",colors[main.king[0]])

func _on_next_button_pressed():
	main.loadScene(self,toScene)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
