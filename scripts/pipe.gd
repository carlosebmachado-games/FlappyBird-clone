extends Node2D

export var speed = -100

func _ready():
	set_process(true)

func _process(delta):
	position += Vector2(delta * speed, 0)
	#position.x += delta * speed