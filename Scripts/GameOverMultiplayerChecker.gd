extends Node

@onready var ballsman = $Board/Ball_Manager
@export var other_player: Node

func _ready():
	NewFruitManager.get_combine()

func Send_Game_Over():
	other_player.Get_Game_Over()

func Get_Game_Over():
	ballsman.leave_menu_win()
