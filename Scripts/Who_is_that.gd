extends Button

var who = preload("res://scenes/Pfp-Explanation.tscn")

func _on_pressed():
	var instance = who.instantiate()
	get_tree().root.add_child(instance)
