extends Node2D
@onready var arrow = $ArrowLargeWhite
@onready var main = get_tree().root.get_child(0)
var lane = null
var minMax = null

func _ready():
	for i in $Jesters.get_child_count():
		if(main.colorNameCipher[main.players[i]] == $Jesters.get_child(i).name and main.players[i][0] != main.king[0]):
			$Jesters.get_child(i).visible == true
	$king.texture = load("res://assets/sprites/judgement/Jkings/Jking_"+main.colorNameCipher[main.king[0]]+".png")
	#mixMax = [main.players[0]]
	#lane = minMax[0]

func _process(delta):
	if Input.is_action_just_pressed("left"):
		pass