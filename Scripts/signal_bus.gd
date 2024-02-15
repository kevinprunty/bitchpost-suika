extends Node

signal on_classic_3_combine_toggled(value : bool)

func emit_on_classic_3_combine_toggled(value : bool) -> void:
	on_classic_3_combine_toggled.emit(value)
