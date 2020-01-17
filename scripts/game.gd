extends Node2D

onready var bird = $bird
onready var background_anim = $background_anim
onready var replay_timer = $replay_timer
onready var score_label = $interface/hud/score

var score = 0

enum states { MAIN_MENU, PLAYING, GAME_OVER }
var state = states.PLAYING

func kill():
	bird.apply_impulse(Vector2(0, 0), Vector2(-1000, 0))
	background_anim.stop()
	state = states.GAME_OVER
	replay_timer.start()
	$sound/hit.play()

func pontuar():
	score += 1
	score_label.text = str(score)
	$sound/score.play()

func _on_replay_timer_timeout():
	get_tree().reload_current_scene()