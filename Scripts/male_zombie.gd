extends Node2D


# Called when the node enters the scene tree for the first time.
@export var speed = 50


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	get_parent().set_progress(get_parent().get_progress() + speed * delta)
