extends Button

<<<<<<< Updated upstream
var Player_Keybind = preload("res://Resources/KeyBinds/Player_Keybinds_Default.tres")

func _on_pressed():
	SettingsSignalBus.emit_set_settings_dictionary(SettingsContainer.create_storage_dictionary())
=======

func _on_pressed():
	SettingsSignalBus.emit_set_settings_dictionary(SettingsContainer.create_storage_dictionary())
	
>>>>>>> Stashed changes
	$"../../..".visible = not visible
	set_process(false)
