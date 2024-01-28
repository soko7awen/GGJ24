extends Sprite2D

func _ready():
	await get_tree().create_timer(10.0).timeout
	get_tree().quit()

func _physics_process(delta):
	if(position.y < 110):
		position.y += 1
