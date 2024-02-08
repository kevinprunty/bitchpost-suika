extends Node

@export var splash_array = []
@onready var splash_label = $"."
@onready var random_splash = splash_array[randi() % splash_array.size()]

func _ready():
	randomize()
	splash_label.text = random_splash
