extends Node

var save_path = "user://save.save"
var No_Save = preload("res://scenes/No_Save.tscn")
var mm_hs: int = 0
var three_behavior: int = 1

func save_data():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(mm_hs)
	file.store_var(three_behavior)

func load_data():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		mm_hs = file.get_var(mm_hs)
		three_behavior = file.get_var(three_behavior)
		UserSettings.tripple_combine = three_behavior
		print(mm_hs," ", three_behavior,"=",UserSettings.tripple_combine)
	else:
		var instance = No_Save.instantiate()
		add_child(instance)
