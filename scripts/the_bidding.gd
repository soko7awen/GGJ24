extends Node2D
@onready var arrow = $Arrow
@onready var main = get_tree().root.get_child(0)
var arrowPos = 0
var lane = null
var lanes = []

func _ready():
	for i in main.players:
		$Jesters.get_child(i[0]).visible = true
	$king.texture = load("res://assets/sprites/judgement/Jkings/Jking_"+main.colorNameCipher[main.king[0]]+".png")

func _process(delta):
	if Input.is_action_just_pressed("left"):
		if arrowPos >= 0:
			arrowPos -= 1
		else:
			arrowPos = main.players.size()-1
	if Input.is_action_just_pressed("right"):
		if arrowPos < main.players.size()-1:
			arrowPos += 1
		else:
			arrowPos = 0
	
	arrow.position = $Jesters.get_child(arrowPos).get_child(0).global_position
	if Input.is_action_just_pressed("submit"):
		main.score[main.players[arrowPos][0]] += 1
		main.king = main.players[arrowPos]
