extends Position2D

onready var pre_pipe = preload("res://prefabs/pipe.tscn")

func _ready():
	randomize()

func _on_spawn_timer_timeout():
	var pipe = pre_pipe.instance()
	pipe.speed = -350
	pipe.position.x = position.x
	pipe.position.y = rand_range(-500, 500)
	get_parent().add_child(pipe)