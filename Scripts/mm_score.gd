extends Label

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	get_node(".").text = "High Score: " + str(SaveManager.mm_hs)
