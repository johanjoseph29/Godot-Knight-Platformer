extends Node2D

@onready var spike_body = $Area2D
@onready var trigger_area = $Area2D/triggerarea
@onready var spike_timer = $spiketimer
@onready var kill_zone = $Area2D/killZone

func _ready():
	# The saw starts hidden and the killzone is off
	spike_body.hide() 
	if kill_zone:
		kill_zone.monitoring = false 
	print("Trap online. Waiting for trigger...")

# --- Signals ---

func _on_triggerarea_body_entered(_body):
	# When the player steps on the trigger
	print("Player hit trigger! Activating saw...")
	trigger_area.set_deferred("monitoring", false) # Disable trigger so it only fires once
	spike_timer.start()

func _on_spiketimer_timeout():
	# This makes the saw appear and become deadly
	print("Saw is now ACTIVE!")
	spike_body.show() 
	if kill_zone:
		kill_zone.monitoring = true 
