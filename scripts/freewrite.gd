extends Node2D

func _ready():
	get_tree().root.get_child(0).prompt = "Free write!"
