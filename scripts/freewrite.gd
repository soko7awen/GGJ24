extends Node2D
@onready var main = get_tree().root.get_child(0)
var themes = []

func _ready():
	var file = FileAccess.open("res://assets/texts/themes.txt", FileAccess.READ)
	while not file.eof_reached():
		var line = file.get_line()
		themes.append(line)
	main.prompt = themes.pick_random()
	$BottomUI/nameText2.text = "[center]"+main.prompt+"[/center]"
