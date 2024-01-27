extends TextureRect
var direction = 1

@export var SPEED = 50

func _process(delta):
	position.x += (direction * SPEED) * delta
	position.y += (direction * SPEED) * delta
	
	if(position.x >= -1 or position.y >= -1):
		position = Vector2(-1500, -1500)
