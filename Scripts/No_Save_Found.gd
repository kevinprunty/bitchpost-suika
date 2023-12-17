extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	var menu_node = get_parent().get_node("/root/MainMenu")
	menu_node.hide()
	await get_tree().create_timer(2).timeout
	menu_node.show()
	queue_free()
	
