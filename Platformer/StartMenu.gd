#Start Menu
extends Control

func _on_StartGameButton_pressed():
	get_tree().change_scene("res://Game001.tscn")

func _on_LevelMenu_pressed():
	get_tree().change_scene("res://LevelMenu.tscn")

func _on_QuitButton_pressed():
	get_tree().quit()
