extends Sprite2D

func _physics_process(delta):
	if(position.y < 110):
		position.y += 1
