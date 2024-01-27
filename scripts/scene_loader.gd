extends Node2D
var players = []

func loadScene(self,scene_path):
	var newScene = load(scene_path).instantiate()
	get_child(0).queue_free()
	add_child(newScene)
