extends OptionButton

func _on_item_selected(index):
	if index == 0:
		UserSettings.tripple_combine = 1
		SaveManager.three_behavior = 1
	if index == 1:
		UserSettings.tripple_combine = 2
		SaveManager.three_behavior = 2
