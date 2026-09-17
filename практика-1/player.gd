class_name Player extends Sprite2D

@export var speed : int = 500
@export var cooldown_in_seconds : float = 0.5
const BULLET = preload("uid://b6osavqjc02ep")
@onready var shoot_cooldown_timer : Timer = $Timer
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("move_up"):
		position.y -= speed * delta
	if Input.is_action_pressed("move_down"):
		position.y += speed * delta
	if Input.is_action_pressed("move_right"):
		position.x += speed * delta
	if Input.is_action_pressed("move_left"):
		position.x -= speed * delta
	look_at(get_global_mouse_position())

func _input(event: InputEvent) -> void:
	if event is InputEventKey: 
		if event.is_pressed() and event.keycode == KEY_ESCAPE:
			get_tree().quit()
	if event.is_pressed() and event.is_action("shoot"):
		if shoot_cooldown_timer.is_stopped():
			var bullet_instance = BULLET.instantiate()
			add_sibling(bullet_instance)
			bullet_instance.rotation = rotation
			bullet_instance.position = position
			shoot_cooldown_timer.start(cooldown_in_seconds)
			
