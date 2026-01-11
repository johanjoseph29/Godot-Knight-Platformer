extends Area2D

@export var target:PackedScene
func _on_body_entered(body: Node2D) -> void:
	print("player entered")
	get_tree().change_scene_to_packed(target) # Replace with function body.
