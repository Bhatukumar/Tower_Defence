extends Node2D

@onready var tower: Sprite2D = $Tower
@onready var defence: Area2D = $Defence
@onready var marker_2d: Marker2D = $Tower/Marker2D

var BULLET = preload("res://Scenes/bullet.tscn")
var enemy_body = null
var is_threat = false

func _process(delta: float) -> void:
	#pass
	if enemy_body != null:
		tower.look_at(enemy_body.global_position)
		var bullet_instance = BULLET.instantiate()
		bullet_instance.direction = (enemy_body.global_position - marker_2d.global_position).normalized()
		bullet_instance.global_position=marker_2d.global_position
		#bullet_instance.rotation=rotation
		get_tree().root.add_child(bullet_instance)
	#else:
		#tower.rotation_degrees = 0

func _on_defence_body_entered(body: Node2D) -> void:
	enemy_body = body
	print(body.name)


func _on_defence_body_exited(body: Node2D) -> void:
	enemy_body = null


func _on_defence_area_entered(area: Area2D) -> void:
	enemy_body = area.body_entered.get_object()
	print(enemy_body.name)