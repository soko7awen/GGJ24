extends Node2D
@onready var main = get_tree().root.get_child(0)

func _ready():
	print(main.lastResponses)

func _process(_delta):
	pass
