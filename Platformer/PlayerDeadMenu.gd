#Dead Menu
extends Control

func _on_RestartButton_pressed():
	get_tree().change_scene("res://Game001.tscn")

func _on_LevelButton_pressed():
	get_tree().change_scene("res://LevelMenu.tscn")

func _on_StartButton_pressed():
	get_tree().change_scene("res://StartMenu.tscn") 
