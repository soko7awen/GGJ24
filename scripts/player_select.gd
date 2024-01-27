extends Node2D
@onready var gameController = $".."
@onready var players = get_node("UI/Players")
@onready var camera = get_node("Camera")
var toScene = "res://scenes/cutscenes/the_card_that_flips.tscn"
var playerNames = ["","","","","",""]

func _process(delta):
	for i in players.get_children().size():
		playerNames[i] = players.get_child(i).get_child(2).text
	if playerNames[0] and playerNames[1] and playerNames[2] and playerNames[3]:
		$UI/startButton.disabled = false
		$UI/startButton.get_child(1).visible = false
		$UI/startButton.mouse_default_cursor_shape = 2
		$UI/startButton/startText.text = "[rainbow freq=0.25 sat=0.8 val=0.8]start[/rainbow]"
	else:
		$UI/startButton.disabled = true
		$UI/startButton.get_child(1).visible = true
		$UI/startButton.mouse_default_cursor_shape = 8
		$UI/startButton/startText.text = "[rainbow freq=0.25 sat=0.3 val=0.3]start[/rainbow]"

func _on_right_button_pressed():
	camera.position.x += 1152
	
func _on_left_button_pressed():
	camera.position.x -= 1152

func _on_start_button_pressed():
	var main = get_tree().root.get_child(0)
	for i in playerNames.size():
		if playerNames[i] != "":
			main.players.append([i,playerNames[i]])
	main.loadScene(self,toScene)

