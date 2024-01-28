extends Node2D
@onready var main = get_tree().root.get_child(0)
@onready var toScene = "res://scenes/cutscenes/the_bidding.tscn"

func _ready():
	fill_texts()

func fill_texts():
	$CanvasLayer/Control/Container/Prompt.text = "[center]" + main.prompt + "[/center]"
	for i in main.lastResponses.size():
		var response = main.lastResponses[i]
		if i <= 2:
			var labelNode = $CanvasLayer/Control/Answers/HBoxContainer.get_child(i)
			labelNode.text = "\n [center]" + response[1] + "[/center]"
			labelNode.get_node("TextureRect").texture = load("res://assets/sprites/judgement/card_blank_"+main.colorNameCipher[response[0]]+".png")
			labelNode.get_node("Button").connect("pressed",Callable(self,"_on_press").bind(response))
			labelNode.visible = true
		elif i <= 4:
			var labelNode = $CanvasLayer/Control/Answers/HBoxContainer2.get_child(i-3)
			labelNode.text = "\n [center]" + response[1] + "[/center]"
			labelNode.get_node("TextureRect").texture = load("res://assets/sprites/judgement/card_blank_"+main.colorNameCipher[response[0]]+".png")
			labelNode.visible = true

func _on_press(player):
	main.loadScene(self,toScene)
	
