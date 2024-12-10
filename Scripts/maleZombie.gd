extends CharacterBody2D


@export var speed = 50
@export var health =100
@onready var impact_detector: Area2D = $ImpactDetector
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta: float) -> void:
	get_parent().set_progress(get_parent().get_progress() + speed * delta)
	if health <= 0:
		animated_sprite_2d.play("dead")
		var timer = Timer.new()
		add_child(timer)
		timer.wait_time = 1
		timer.one_shot = true
		timer.start()
		await timer.timeout
		queue_free()

func _on_impact_detector_area_entered(area: Area2D) -> void:
	health-=4
	area.get_parent().queue_free()
