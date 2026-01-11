extends Area2D
@onready var game_manager=$"../../score"

func _on_body_shape_entered(body_rid: RID, body: Node2D, body_shape_index: int, local_shape_index: int) -> void:
	Global.score+=1
	queue_free() # Re    place with function body.
