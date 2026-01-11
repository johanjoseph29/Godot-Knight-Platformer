extends Area3D

# Reference the nodes in the inspector
@export var checkpoint_node : Node2D
@export var target_position : Marker2D

func _on_body_entered(body):
	# Check if the object entering is the player
	if body.is_in_group("player"): 
		move_checkpoint()

func move_checkpoint():
	if checkpoint_node and target_position:
		# Move the checkpoint to the marker's global position
		checkpoint_node.global_position = target_position.global_position
		print("Checkpoint moved!")
		
		# Optional: Disable this trigger so it only happens once
		queue_free()
