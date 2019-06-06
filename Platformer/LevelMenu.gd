#Level Menu
extends Control

func _on_Return_pressed():
	get_tree().change_scene("res://StartMenu.tscn") 

func _on_Level1_pressed():
	get_tree().change_scene("res://Levels/World001.tscn") 

func _on_Level2_pressed():
	#get_tree().change_scene("res://Levels/World002.tscn") 
	get_node("/root/Game001").load_level(2)