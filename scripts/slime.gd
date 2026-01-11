extends Node2D

const speed = 60
var direction = 1

@onready var ray_cast_right = $RayCastright
@onready var ray_cast_left = $RayCastleft
@onready var animated_sprite=$AnimatedSprite2D
func _process(delta: float) -> void:
	# Only check the ray in the direction we are currently moving
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h=true
		 # Optional: Flip your sprite
	elif ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h=false

	# Move the character
	position.x += direction * speed * delta
