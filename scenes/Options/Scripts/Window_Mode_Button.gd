extends Control

@onready var option_button = $HBoxContainer/OptionButton as Button


const WINDOW_MODE_ARRAY : Array[String] = [
	"Windowed",
	"Fullscreen",
	"Borderless Windowed",
	"Borderless Fullscreen"
]

func _ready():
	_add_window_mode_items()
	option_button.item_selected.connect(on_window_mode_selected)
	load_data()

func load_data() -> void:
	on_window_mode_selected(SettingsContainer.get_window_mode_index())
	option_button.select(SettingsContainer.get_window_mode_index())

func _add_window_mode_items() -> void:
	for window_mode in WINDOW_MODE_ARRAY:
		option_button.add_item(window_mode)

func on_window_mode_selected(index : int) -> void:
	SettingsSignalBus.emit_on_window_mode_selected(index)
	
	match index:
		0: # Windowed Mode
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, false)
		1: # Fullscreen
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, false)
		2: # Borderless Window
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, true)
		3: # Borderless Fullscreen
			DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
			DisplayServer.window_set_flag(DisplayServer.WINDOW_FLAG_BORDERLESS, true)




