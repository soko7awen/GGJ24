extends Node2D
@onready var main = get_tree().root.get_child(0)

func _ready():
	await get_tree().create_timer(5.0).timeout
	#check if someone wins
	main.loadScene(self,toScene)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
