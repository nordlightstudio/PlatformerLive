#Start Menu
extends Control

func _on_StartGameButton_pressed():
	get_tree().change_scene("res://Levels/World.tscn")

func _on_QuitButton_pressed():
	get_tree().quit()