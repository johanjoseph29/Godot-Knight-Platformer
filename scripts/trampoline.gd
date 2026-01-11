extends Area2D
@onready var animated_sprite_2d=$AnimatedSprite2D

func _on_body_entered(body: Node2D) -> void:
	if body.global_position.y<global_position.y:
		body.bounce(-800)
		animated_sprite_2d.play("jump")


func _on_body_exited(body: Node2D) -> void:
	animated_sprite_2d.play("idle") # Replace with function body.
