extends Node2D

@onready var defence: Area2D = $Tower/Defence
@onready var tower: Sprite2D = $Tower/Tower

var enemy_body = null
var is_threat = false

func _physics_process(delta: float) -> void:
	if enemy_body != null:
		tower.look_at(enemy_body.global_position)
	else:
		tower.rotation_degrees = 0

func _on_defence_body_entered(body: Node2D) -> void:
	enemy_body = body

func _on_defence_body_exited(body: Node2D) -> void:
	enemy_body = null
