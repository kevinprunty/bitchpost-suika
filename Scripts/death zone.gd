extends Area2D

@onready var Spawner = get_node("../move and spawn/collider/mover_controller/TestSpawner")
var win_menu = preload("res://scenes/win_menu.tscn")


func _unhandled_input(event):
	if Input.is_physical_key_pressed(KEY_M):
		print(Spawner.can_die, get_node("."))

func _process(_delta):
	if Spawner.can_die == true:
		if get_node(".").get_overlapping_areas():
			var instance = win_menu.instantiate()
			instance.position.y += 300
			add_child(instance)

func _on_area_entered(_area):
	if Spawner.can_die == true:
		var instance = win_menu.instantiate()
		instance.position.y += 300
		add_child(instance)
		print(Spawner.can_die," area entered")
	else:
		print_debug("in bubble")
