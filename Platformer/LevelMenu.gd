#Level Menu
extends Control

func _on_Return_pressed():
	get_tree().change_scene("res://StartMenu.tscn") 

func _on_Level1_pressed():
	get_tree().change_scene("res://Levels/World.tscn") 

func _on_Level2_pressed():
	get_tree().change_scene("res://Levels/World1.tscn") 
