extends Node2D

export var speed = -100

onready var game = get_tree().current_scene

func _process(delta):
	if game.state == game.states.PLAYING:
		position.x += delta * speed
	if position.x < -1200:
		queue_free()

func _on_body_body_entered(body):
	if body.name == "bird":
		game.kill()