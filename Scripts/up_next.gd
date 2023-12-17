extends Node2D

@onready var spawner = get_node("../Board/move and spawn/collider/mover_controller/TestSpawner")
var spawn_value: float
var first = true

func _process(_delta):
	if spawner.first_spawn == true:
		get_node("chim").hide()
		get_node("duck").hide()
		get_node("feature").hide()
		get_node("Mac").show()
	else:
		spawn_value = spawner.fruit_pick
		if spawn_value <= 3.0:
			get_node("chim").hide()
			get_node("duck").hide()
			get_node("feature").hide()
			get_node("Mac").show()
		else: 
			if spawn_value <= 7.0:
				get_node("chim").hide()
				get_node("duck").hide()
				get_node("feature").show()
				get_node("Mac").hide()
			else:
				if spawn_value <= 9:
					get_node("chim").show()
					get_node("duck").hide()
					get_node("feature").hide()
					get_node("Mac").hide()
				else:
					get_node("chim").hide()
					get_node("duck").show()
					get_node("feature").hide()
					get_node("Mac").hide()
