extends Node2D

var seen_count = NewFruitManager.highest_fruit_seen


func _ready():
	NewFruitManager.hider = get_node(".")
	if seen_count == 2:
		unhide_strawberry()
	if seen_count == 3:
		unhide_strawberry()
		unhide_grape()
	if seen_count == 4:
		unhide_strawberry()
		unhide_grape()
		unhide_tangerine()
	if seen_count == 5:
		unhide_strawberry()
		unhide_grape()
		unhide_tangerine()
		unhide_orange()
	if seen_count == 6:
		unhide_strawberry()
		unhide_grape()
		unhide_tangerine()
		unhide_orange()
		unhide_apple()
	if seen_count == 7:
		unhide_strawberry()
		unhide_grape()
		unhide_tangerine()
		unhide_orange()
		unhide_apple()
		unhide_dekopan()
	if seen_count == 8:
		unhide_strawberry()
		unhide_grape()
		unhide_tangerine()
		unhide_orange()
		unhide_apple()
		unhide_dekopan()
		unhide_peach()
	if seen_count == 9:
		unhide_strawberry()
		unhide_grape()
		unhide_tangerine()
		unhide_orange()
		unhide_apple()
		unhide_dekopan()
		unhide_peach()
		unhide_pineapple()
	if seen_count == 10:
		unhide_strawberry()
		unhide_grape()
		unhide_tangerine()
		unhide_orange()
		unhide_apple()
		unhide_dekopan()
		unhide_peach()
		unhide_pineapple()
		unhide_melon()
	if seen_count == 11:
		unhide_strawberry()
		unhide_grape()
		unhide_tangerine()
		unhide_orange()
		unhide_apple()
		unhide_dekopan()
		unhide_peach()
		unhide_pineapple()
		unhide_melon()
		unhide_watermelon()


func unhide_strawberry():
	get_node("Strawberry_hider").hide()

func unhide_grape():
	get_node("grape_hider").hide()

func unhide_tangerine():
	get_node("Tangerine_hider").hide()

func unhide_orange():
	get_node("orange_hider").hide()

func unhide_apple():
	get_node("apple_hider").hide()

func unhide_dekopan():
	get_node("dekopan_hider").hide()

func unhide_peach():
	get_node("peach_hider").hide()

func unhide_pineapple():
	get_node("pineapple_hider").hide()

func unhide_melon():
	get_node("melon_hider").hide()

func unhide_watermelon():
	get_node("watermelon_hider").hide()
