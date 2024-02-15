extends Button


func _on_pressed():
	SettingsSignalBus.emit_set_settings_dictionary(SettingsContainer.create_storage_dictionary())
	
	$"../../..".visible = not visible
	set_process(false)
