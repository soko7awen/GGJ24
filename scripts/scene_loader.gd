extends Node2D
var players = []
var king = 0
var lastMinigame = 5

func loadScene(old_scene,scene_path):
	var newScene = load(scene_path).instantiate()
	old_scene.queue_free()
	add_child(newScene)

func pickKing():
	king = players.pick_random()
