extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
# Called when the node enters the scene tree for the first time.
@export var speed = 50
@export var health =100
@onready var impact_detector: Area2D = $ImpactDetector

#
#func _ready() -> void:
#
	#impact_detector.connect("body_entered", Callable(self, "on_impact")) 
	#
#func on_impact(_body: Node) -> void:
	#health-=2
	#print(health)
	#_body.queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	get_parent().set_progress(get_parent().get_progress() + speed * delta)





func _on_impact_detector_body_entered(body: Node2D) -> void:
	print(body.name) # Replace with function body.
