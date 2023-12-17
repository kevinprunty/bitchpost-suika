extends Button

var options = preload("res://scenes/options.tscn")

func _on_pressed():
	var instance = options.instantiate()
	get_tree().root.add_child(instance)
