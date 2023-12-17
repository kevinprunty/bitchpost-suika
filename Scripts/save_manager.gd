extends Node

var save_path = "user://save.save"
var No_Save = preload("res://scenes/No_Save.tscn")
var mm_hs = 0

func save_data():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(mm_hs)

func load_data():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		mm_hs = file.get_var(mm_hs)
	else:
		var instance = No_Save.instantiate()
		add_child(instance)
