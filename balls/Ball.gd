class_name Ball
extends Node2D

const Ball_Scene := preload("res://balls/Ball.tscn")

# Size constraint lookup for balls
const SIZES = [34, 55, 68, 90, 106, 122, 138, 162, 183, 201, 216]

# References
var sprite: Sprite2D # get in _ready()

# Ball properties
var ball_name: String
var image: String
var size: int

static func new_ball(ball_name: String, size: int, image: String) -> Ball:
	var ball = Ball_Scene.instantiate()
	ball.ball_name = ball_name
	ball.image = image
	
	# Determine size #
	# 1. Size should be in range [0-SIZES.size()) 
	var adjusted_size = 0
	if size >= 0 and size < SIZES.size():
		adjusted_size = size # If size is in Array range, go ahead.
	elif size > SIZES.size():
		adjusted_size = SIZES[-1] # Set to largest if size is too large.
	# Do nothing if size is too small, because it's preset to 0.
	
	#2. Set size
	ball.size = SIZES[adjusted_size]
	
	return ball
	


# Function for automatically resizing sprites to be the correct dimensions.
func resize(sprite: Sprite2D):
	var x = sprite.texture.get_width()
	print("Width: {0}".format([x]))
	var y = sprite.texture.get_height()
	print("Height: {0}".format([y]))
	
	print("Size: %d" % size )
	
	# Get the scale that will resize the object appropriately
	var x_scale := size / float(x)
	print("X_Scale: {0}".format([x_scale]))
	var y_scale := size / float(y)
	print("Y_Scale: {0}".format([y_scale]))
	
	sprite.scale.x = x_scale
	sprite.scale.y = y_scale
	
	# Resize physics bounds
	var collision_shape = get_node("RigidBody2D/CollisionShape2D")
	collision_shape.shape.radius = floor((sprite.texture.get_width() * x_scale) / 2)

	
	
	
	return sprite
	



# Called when the node enters the scene tree for the first time.
func _ready():
	sprite = get_node("RigidBody2D/Sprite2D")
	
	if (image):
		sprite.texture = load(image)
	else:
		sprite.texture = load("res://sprites/fruits/circles/unknown.png")
	
	resize(sprite)
	



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
