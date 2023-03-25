extends RigidBody2D

onready var game = get_tree().get_current_scene()

func _input(event):
	if event.is_action_pressed("touch"):
		on_touch()

func on_touch():
	if game.state == game.states.PLAYING:
		linear_velocity = Vector2.ZERO
		apply_impulse(Vector2(0, 0), Vector2(0, -800))
		$snd_wing.play()
