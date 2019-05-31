#WorldComplete
extends Area2D

#Go to Level Menu
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player001":
			get_tree().change_scene("res://LevelMenu.tscn") 