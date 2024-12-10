extends Node2D

@export var direction = Vector2.RIGHT
@export var speed = 200

@onready var impact_detector: Area2D = $ImpactDetector

#func _ready() -> void:
## Connect the 'body_entered' signal of the 'impact_detector' Area2D to the '_on_impact' method.
## This ensures that when a body (e.g., an enemy) enters the impact detection area,
## the bullet will detect the collision and be destroyed (freed) from the screen.
	#impact_detector.connect("body_entered", Callable(self, "on_impact")) 
#
#func on_impact(_body: Node) -> void:
	#queue_free()

func _physics_process(delta: float) -> void:
	position += direction.normalized() * speed * delta
	


func _on_visible_on_screen_notifier_2d_screen_entered() -> void:
	pass # Replace with function body.
	


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
