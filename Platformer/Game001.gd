# Skript für Game001
extends Node2D

#Laden der Level-Szenen im vorraus
var level_scenes = [
        preload("res://Levels/World001.tscn"),
        preload("res://Levels/World002.tscn"),
        preload("res://LevelMenu.tscn")
        ]
        
var current_level

# Wenn alles fertig geladen
func _ready():
    #ersten level laden
    load_level(1)
    
    
func load_level(level):
    
    #Prüfen ob schon ein Level geladen ist
    if current_level:
        #Wenn ja, Level löschen
        current_level.queue_free()
        
    current_level = level_scenes[level-1].instance()

    #Start Position Player001 festlegen
    if current_level.has_node("StartPositionPlayer"):
        $Player001.global_position = current_level.get_node("StartPositionPlayer").global_position

    add_child(current_level)