extends Node2D
@onready var arrow = $Arrow
@onready var main = get_tree().root.get_child(0)
@onready var toScene = "res://scenes/cutscenes/score.tscn"
var arrowPos = 0
var lane = null
var lanes = []

func _ready():
	arrowPos = main.players[0][0]
	for i in main.players:
		if(i[0] != main.king[0]):
			print(i[0])
			$Jesters.get_child(i[0]).visible = true
	$king.texture = load("res://assets/sprites/judgement/Jkings/Jking_"+main.colorNameCipher[main.king[0]]+".png")

func _process(delta):
	if Input.is_action_just_pressed("left"):
		if arrowPos > 0:
			arrowPos -= 1
			if main.king == main.players[arrowPos]:
				arrowPos -= 1
		else:
			arrowPos = main.players.size()-1
	if Input.is_action_just_pressed("right"):
		if arrowPos < main.players.size()-1:
			arrowPos += 1
			if main.king == main.players[arrowPos]:
				arrowPos += 1
		else:
			arrowPos = 0
	
	arrow.position = $Jesters.get_child(main.players[arrowPos][0]).get_child(0).global_position
	if Input.is_action_just_pressed("submit"):
		main.score[main.players[arrowPos][0]] += 1
		main.king = main.players[arrowPos]
		main.loadScene(self,toScene)
