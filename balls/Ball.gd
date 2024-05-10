class_name Ball
extends Node2D

const Ball_Scene := preload("res://balls/Ball_Object.tscn")

# Size constraint lookup for balls
const SIZES = [34, 55, 68, 90, 106, 122, 138, 162, 183, 201, 216]

# References
var sprite: Sprite2D # get in _ready()

# Ball properties
var ball_name: String
var image: String
var size: int

static func new_ball(ball_name: String, size: int, image: String):
	var new_ball: Ball = Ball_Scene.instantiate()
	new_ball.ball_name = ball_name
	new_ball.image = image
	
	# Determine size #
	# 1. Size should be in range [0-SIZES.size()) 
	var adjusted_size = 0
	if size >= 0 and size < SIZES.size():
		adjusted_size = size # If size is in Array range, go ahead.
	elif size > SIZES.size():
		adjusted_size = SIZES[-1] # Set to largest if size is too large.
	# Do nothing if size is too small, because it's preset to 0.
	
	#2. Set size
	new_ball.size = SIZES[adjusted_size]
	
	return new_ball
	


# Function for automatically resizing sprites to be the correct dimensions.
func resize(sprite: Sprite2D):
	var x = sprite.texture.get_width()
	var y = sprite.texture.get_height()
	
	# Get the scale that will resize the object appropriately
	var x_scale := float(x) / size
	var y_scale := float(y) / size
	
	sprite.scale.x = x_scale
	sprite.scale.y = y_scale
	return sprite
	



# Called when the node enters the scene tree for the first time.
func _ready():
	sprite = get_node("RigidBody2D/Sprite2D")
	resize(sprite)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
