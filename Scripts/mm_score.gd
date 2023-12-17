extends Label

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	get_node(".").text = "High Score: " + str(SaveManager.mm_hs)

func get_settings():
	if SaveManager.three_behavior == 1:
		return "True"
	if SaveManager.three_behavior == 2:
		return "False"
