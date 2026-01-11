extends CharacterBody2D

# Constants for movement feel
const SPEED = 100.0
const JUMP_VELOCITY = -300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	# 1. Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# 2. Handle Jump.
	# Using "ui_accept" (Space/Enter) - ensure player is actually on the floor!
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# 3. Get the input direction: -1 (left), 1 (right), or 0 (none)
	var direction = Input.get_axis("ui_left", "ui_right")
	
	if direction:
		velocity.x = direction * SPEED
		# Flip the sprite based on direction
		if direction > 0:
			$AnimatedSprite2D.flip_h = false
		else:
			$AnimatedSprite2D.flip_h = true
	else:
		# Smoothly stop when no key is pressed
		velocity.x = move_toward(velocity.x, 0, SPEED)

	# 4. Apply movement
	move_and_slide()
