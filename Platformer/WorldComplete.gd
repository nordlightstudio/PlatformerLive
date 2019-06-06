#WorldComplete
extends Area2D

#Go to Level Menu
func _on_WorldComplete_body_entered(body):
	if body.name == "Player001":
		get_tree().change_scene("res://LevelMenu.tscn") 
