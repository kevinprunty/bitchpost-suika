extends Control

@onready var check_button = $HBoxContainer/CheckButton as CheckButton
@onready var state_label = $HBoxContainer/state_label as Label

<<<<<<< Updated upstream

func _ready():
	check_button.toggled.connect(on_classic_combine_toggled)
	var state = SettingsContainer.get_classic_3_combine_state()
	if state != true:
		state_label.text = "Skip a Tier"
		check_button.button_pressed = false
	else:
		state_label.text = "Classic"
		check_button.button_pressed = true
		
=======
func _ready():
	check_button.toggled.connect(on_classic_combine_toggled)

>>>>>>> Stashed changes
func load_data() -> void:
	on_classic_combine_toggled(SettingsContainer.get_classic_3_combine_state())

func set_label_text(button_pressed : bool) -> void:
	if button_pressed != true:
		state_label.text = "Skip a Tier"
	else:
		state_label.text = "Classic"
<<<<<<< Updated upstream
=======
	
>>>>>>> Stashed changes

func on_classic_combine_toggled(button_pressed : bool) -> void:
	set_label_text(button_pressed)
	SettingsSignalBus.emit_on_classic_3_combine_toggled(button_pressed)
