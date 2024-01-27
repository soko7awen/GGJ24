extends Node2D
var players = []
var lastMinigame = null

func loadScene(old_scene,scene_path):
	var newScene = load(scene_path).instantiate()
	old_scene.queue_free()
	add_child(newScene)
