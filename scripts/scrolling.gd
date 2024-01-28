extends TextureRect
var direction = 1

@export var SPEED = 50

func _process(delta):
	position.x += (direction * SPEED) * delta
	position.y += (direction * SPEED) * delta
	
	if((direction > 0 and (position.x >= 10 or position.y >= 10)) or (direction < 0 and (position.x <= -4000 or position.y <= -3000))):
		direction = -direction
