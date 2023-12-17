extends Button

var score = NewFruitManager.score

func _on_pressed():
	if score > NewFruitManager.high_score:
		NewFruitManager.high_score = score
		NewFruitManager.score = 0
		SaveManager.mm_hs = NewFruitManager.high_score
	else:
		NewFruitManager.score = 0
	for n in get_node("/root/NewFruitManager").get_children():
		get_node("/root/NewFruitManager").remove_child(n)
		n.queue_free()
	get_tree().change_scene_to_file("res://scenes/MainMenu.tscn")
