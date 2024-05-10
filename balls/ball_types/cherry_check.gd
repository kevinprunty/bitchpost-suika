extends Node2D

var current_pos: Vector2



func _on_combine_hitbox_area_entered(area):
	if area.has_method("cherry"):
		current_pos = get_node("RigidBody2D").global_position
		NewFruitManager.cherry_pos_array.append(current_pos)
		NewFruitManager.score += 1
		queue_free()

func _ready():
	#var sprite = get_node("RigidBody2D/Combine Hitbox/Sprite2D")
	#sprite.texture = load("res://sprites/fruits/circles/TOASTER.png")
	pass
