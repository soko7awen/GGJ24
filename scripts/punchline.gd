extends Node2D
@onready var main = get_tree().root.get_child(0)
var punchlines = []

func _ready():
	var file = FileAccess.open("res://assets/texts/punchlines.txt", FileAccess.READ)
	while not file.eof_reached():
		var line = file.get_line()
		punchlines.append(line)
	main.prompt = punchlines.pick_random()
	$BottomUI/nameText2.text = "[center]"+main.prompt+"[/center]"
