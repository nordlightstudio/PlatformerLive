#Level Menu
extends Control

func _on_Return_pressed():
	get_tree().change_scene("res://StartMenu.tscn") 

func _on_Level1_pressed():
	#get_node("/root/Game001").load_level(1)
	Global.current_level_counter = 1
	get_tree().change_scene("res://Game001.tscn")

func _on_Level2_pressed():
	#get_tree().change_scene("res://Levels/World002.tscn") 
	Global.current_level_counter = 2
	get_tree().change_scene("res://Game001.tscn")