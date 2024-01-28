extends Node2D
var players = []
var lastMinigame
var king
var prompt
var lastResponses
var score = [0,0,0,0,0,0]
var colorCipher = [Color8(255,0,77),Color8(41,173,255),Color8(0,228,54),Color8(255,236,39),Color8(255,163,0),Color8(255,119,168)]
var colorNameCipher = ["red","blue","green","yellow","orange","pink"]

func loadScene(old_scene,scene_path):
	var newScene = load(scene_path).instantiate()
	old_scene.queue_free()
	add_child(newScene)

func pickKing(): #picking his nose lmao
	king = players.pick_random()
