extends Node2D
@onready var main = get_tree().root.get_child(0)
var setups = []

func _ready():
	var file = FileAccess.open("res://assets/texts/setups.txt", FileAccess.READ)
	while not file.eof_reached():
		var line = file.get_line()
		setups.append(line)
	main.prompt = setups.pick_random()
	$BottomUI/nameText2.text = "[center]"+main.prompt+"[/center]"
