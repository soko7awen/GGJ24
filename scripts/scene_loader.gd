extends Node2D
var players = []
var lastMinigame = null
var king = 0

func loadScene(old_scene,scene_path):
	var newScene = load(scene_path).instantiate()
	old_scene.queue_free()
	add_child(newScene)

func pickKing():
	king = players.pick_random()
