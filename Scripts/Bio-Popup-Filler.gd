extends Control

@onready var bio_label = $"ColorRect/Bio Area/Bio Label"
@onready var name_label = $"ColorRect/Name Area/Name Label"
@onready var source_label = $"ColorRect/Pic Source/Source Label"
@onready var pic_texture = $"ColorRect/Pic Area/Pic Texture"

# the index from pfp-explanation's selection menu
# defaulted to 100 for bug testing, should not ever be seen as 100
@export var index_passthrough = 100

# Called when the node enters the scene tree for the first time.
func _ready():
	update_bio_stuff(index_passthrough)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

# updates the bio stuff, in order of appearence in the pfp menu, if its higher
# then ten or lower than 0 (shouldnt be) it will load the deafult placeholder
func update_bio_stuff(character):
	if character == 0:
		var Bio_Res = load("res://scenes/bio-bubbles/Bio-Resources/Mac_Bio.tres")
		name_label.text = Bio_Res.Name
		bio_label.text = Bio_Res.Bio
		source_label.text = Bio_Res.Pfp_Source
		pic_texture.texture = Bio_Res.Pfp_Texture
	if character == 1:
		var Bio_Res = load("res://scenes/bio-bubbles/Bio-Resources/Feature_Bio.tres")
		name_label.text = Bio_Res.Name
		bio_label.text = Bio_Res.Bio
		source_label.text = Bio_Res.Pfp_Source
		pic_texture.texture = Bio_Res.Pfp_Texture
	if character == 2:
		var Bio_Res = load("res://scenes/bio-bubbles/Bio-Resources/Kittrz_Bio.tres")
		name_label.text = Bio_Res.Name
		bio_label.text = Bio_Res.Bio
		source_label.text = Bio_Res.Pfp_Source
		pic_texture.texture = Bio_Res.Pfp_Texture
	if character == 3:
		var Bio_Res = load("res://scenes/bio-bubbles/Bio-Resources/Duck_Bio.tres")
		name_label.text = Bio_Res.Name
		bio_label.text = Bio_Res.Bio
		source_label.text = Bio_Res.Pfp_Source
		pic_texture.texture = Bio_Res.Pfp_Texture
	if character == 4:
		var Bio_Res = load("res://scenes/bio-bubbles/Bio-Resources/Salami_Bio.tres")
		name_label.text = Bio_Res.Name
		bio_label.text = Bio_Res.Bio
		source_label.text = Bio_Res.Pfp_Source
		pic_texture.texture = Bio_Res.Pfp_Texture
	if character == 5:
		var Bio_Res = load("res://scenes/bio-bubbles/Bio-Resources/List_Bio.tres")
		name_label.text = Bio_Res.Name
		bio_label.text = Bio_Res.Bio
		source_label.text = Bio_Res.Pfp_Source
		pic_texture.texture = Bio_Res.Pfp_Texture
	if character == 6:
		var Bio_Res = load("res://scenes/bio-bubbles/Bio-Resources/Worm_Bio.tres")
		name_label.text = Bio_Res.Name
		bio_label.text = Bio_Res.Bio
		source_label.text = Bio_Res.Pfp_Source
		pic_texture.texture = Bio_Res.Pfp_Texture
	if character == 7:
		var Bio_Res = load("res://scenes/bio-bubbles/Bio-Resources/Gilbert_Bio.tres")
		name_label.text = Bio_Res.Name
		bio_label.text = Bio_Res.Bio
		source_label.text = Bio_Res.Pfp_Source
		pic_texture.texture = Bio_Res.Pfp_Texture
	if character == 8:
		var Bio_Res = load("res://scenes/bio-bubbles/Bio-Resources/Toaster_Bio.tres")
		name_label.text = Bio_Res.Name
		bio_label.text = Bio_Res.Bio
		source_label.text = Bio_Res.Pfp_Source
		pic_texture.texture = Bio_Res.Pfp_Texture
	if character == 9:
		var Bio_Res = load("res://scenes/bio-bubbles/Bio-Resources/BlueAura_Bio.tres")
		name_label.text = Bio_Res.Name
		bio_label.text = Bio_Res.Bio
		source_label.text = Bio_Res.Pfp_Source
		pic_texture.texture = Bio_Res.Pfp_Texture
	if character == 10:
		var Bio_Res = load("res://scenes/bio-bubbles/Bio-Resources/Simple_Bio.tres")
		name_label.text = Bio_Res.Name
		bio_label.text = Bio_Res.Bio
		source_label.text = Bio_Res.Pfp_Source
		pic_texture.texture = Bio_Res.Pfp_Texture
