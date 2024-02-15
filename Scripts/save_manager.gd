extends Node

const SETTINGS_SAVE_PATH : String = "user://settings.save"

var settings_data_dict : Dictionary = {}
var save_path = "user://save.save"
var No_Save = preload("res://scenes/No_Save.tscn")
var mm_hs: int = 0
@onready var UserSettings = SettingsContainer.get_classic_3_combine_state()

func _ready():
	SettingsSignalBus.set_settings_dictionary.connect(on_settings_save)
	load_settings_data()


func on_settings_save(data : Dictionary) -> void:
	var save_settings_data_file = FileAccess.open(SETTINGS_SAVE_PATH, FileAccess.WRITE)
	
	var json_data_string = JSON.stringify(data)
	
	save_settings_data_file.store_line(json_data_string)

func save_data():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(mm_hs)
	file.store_var(UserSettings)

func load_data():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		mm_hs = file.get_var(mm_hs)
		print(mm_hs," ","=",)
	else:
		var instance = No_Save.instantiate()
		add_child(instance)

func _unhandled_input(_event):
	if Input.is_physical_key_pressed(KEY_F7):
		print(SettingsContainer.loaded_data)

func load_settings_data() -> void:
	if not FileAccess.file_exists(SETTINGS_SAVE_PATH):
		print("bruh")
		return
	var save_settings_data_file = FileAccess.open(SETTINGS_SAVE_PATH, FileAccess.READ)
	var loaded_data : Dictionary = {}
	
	while save_settings_data_file.get_position() < save_settings_data_file.get_length():
		var json_string = save_settings_data_file.get_line()
		var json = JSON.new()
		var _parsed_result = json.parse(json_string)
		
		loaded_data = json.get_data()
	SettingsSignalBus.emit_load_settings_data(loaded_data)
