extends Node2D
@onready var main = get_tree().root.get_child(0)
var toScene = "res://scenes/cutscenes/card_select.tscn"
@onready var colors = main.colorCipher
@export var flipped = false
var unflipped = false

# Called when the node enters the scene tree for the first time.
func _ready():
	if main.king == null:
		main.pickKing()
	$Label.text = main.king[1]
	$Label.set("theme_override_colors/font_color",colors[main.king[0]])
	$AnimationPlayer.play("Flip")

func _on_next_button_pressed():
	main.loadScene(self,toScene)

func _on_animation_player_animation_finished(anim_name):
	if anim_name == "Flip":
		$TextureRect.texture = load("res://assets/sprites/kings/king_"+main.colorNameCipher[main.king[0]]+".png")
		$AnimationPlayer.play("Unflip")
		
