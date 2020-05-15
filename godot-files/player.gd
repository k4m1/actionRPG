extends KinematicBody2D

var velocity = Vector2.ZERO

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = 10
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -10
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -10
	elif Input.is_action_pressed("ui_down"):
		velocity.y = 10
	else:
		velocity.x = 0
		velocity.y = 0
		
	move_and_collide(velocity)
		
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
