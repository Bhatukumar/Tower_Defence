extends Node2D

@export var direction = Vector2.RIGHT
@export var speed = 300

@onready var impact_detector: Area2D = $ImpactDetector

func _physics_process(delta: float) -> void:
	position += direction.normalized() * speed * delta

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
