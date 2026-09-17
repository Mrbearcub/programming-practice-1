class_name Bullet extends Sprite2D

@export var speed_of_flight : int = 2000

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += Vector2.UP.rotated(rotation + PI/2) * speed_of_flight * delta


func _on_area_2d_area_entered(area: Area2D) -> void:
	self.queue_free()
