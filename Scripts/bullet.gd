extends Node2D

@export var direction = Vector2.RIGHT
@export var speed = 10000


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	global_translate(direction.normalized() * speed * delta)
	



func _on_visible_on_screen_notifier_2d_screen_entered() -> void:
	pass # Replace with function body.
	


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
