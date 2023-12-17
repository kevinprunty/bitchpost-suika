extends CharacterBody2D

var move_speed = 500

func _physics_process(_delta):
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		0
	)
	velocity = input_direction * move_speed
	move_and_slide()
