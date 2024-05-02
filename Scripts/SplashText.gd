extends Node

@export var splash_array = []

@onready var splash_label = $"."
@onready var random_splash = splash_array[randi() % splash_array.size()]
@onready var animation_player = $AnimationPlayer

func _ready():
	randomize()
	splash_label.text = random_splash
	var rng = RandomNumberGenerator.new()
	var wtf = rng.randi_range(0,25)
	if wtf == 25:
		rainbow()

func rainbow():
	animation_player.play("Splash-Rainbow")
