extends Node

#this is just used as a place to store selected var that can be accsessed in game.
#will find a better place/method for this
var tripple_combine 
#1 is skip a tier, 2 is dont

func _ready():
	var three_classic = SettingsContainer.get_classic_3_combine_state()
	if three_classic == true:
		print(three_classic)
		tripple_combine = 1
	else:
		tripple_combine = 2
