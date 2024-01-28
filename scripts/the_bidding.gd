extends Node2D
@onready var arrow = $ArrowLargeWhite
@onready var main = get_tree().root.get_child(0)
var lane = null
var minMax = null

func _ready():
	for i in main.players:
		$Jesters.get_child(i[0]).visible = true
	$king.texture = load("res://assets/sprites/judgement/Jkings/Jking_"+main.colorNameCipher[main.king[0]]+".png")
	#mixMax = [main.players[0]]
	#lane = minMax[0]

func _process(delta):
	if Input.is_action_just_pressed("left"):
		pass
