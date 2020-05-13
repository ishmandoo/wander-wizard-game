extends Area2D

onready var camera = $Camera2D

const MAX_SPEED = 250
var velocity = 0
var direction = 1

var enabled = true

func get_input():
	if not enabled:
		return
	
	velocity = 0
	if Input.is_action_pressed('ui_right'):
		velocity = 1
	if Input.is_action_pressed('ui_left'):
		velocity = -1

	velocity = velocity * MAX_SPEED
	
	if velocity > 0:
		direction = -1
	if velocity < 0:
		direction = 1
		
	if velocity == 0:
		$Sprite.animation = "default"
	else:
		$Sprite.animation = "walking"
		
func disable():
	$Sprite.hide()
	enabled = false

func enable():
	$Sprite.show()
	enabled = true
		
func update_direction():
	scale.x = direction

func update_position(delta):
	position += Vector2(velocity * delta, 0)
	camera.position = Vector2.UP * 95
	
	
func _process(delta):
	get_input()
	update_direction()
	update_position(delta)
