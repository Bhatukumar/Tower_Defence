class_name Projectile
extends Node2D

@export var direction = Vector2.ZERO
@export var speed = 200

@onready var impact_detector: Area2D = $ImpactDetector

func _ready() -> void:
	impact_detector.connect("body_entered",self,"_on_impact")
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	position += direction.normalized() * speed * delta
	

func _on_impact(_body: Node) -> void:
	queue_free()

func _on_visible_on_screen_notifier_2d_screen_entered() -> void:
	pass # Replace with function body.
	


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
