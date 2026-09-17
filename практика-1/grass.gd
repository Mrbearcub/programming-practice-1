class_name Level1 extends Node2D

const PLAYER = preload("uid://bv114qnw8el68")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var player_instance = PLAYER.instantiate()
	add_child(player_instance)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
