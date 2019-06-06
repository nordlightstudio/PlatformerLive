# Skript für Game001
extends Node2D

#Laden der Level-Szenen im vorraus
var level1_scene = preload("res://Levels/World001.tscn")
var level2_scene = preload("res://Levels/World002.tscn")

# Wenn alles fertig geladen
func _ready():
    #ersten level laden
    load_level(1)
 
func load_level(level):
    
    #Prüfen ob schon ein Level geladen ist
    if has_node("Level"):
        #Wenn ja, Level löschen
        get_node("Level").queue_free()
       
    var level_scene
    
    match level:
        1:
            level_scene = level1_scene.instance()
        2:
            level_scene = level2_scene.instance()

	#Start Position Player001 festlegen
    $Player001.global_position = level_scene.get_node("StartPositionPlayer").global_position

    add_child(level_scene)


