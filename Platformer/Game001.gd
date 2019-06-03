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
    
    add_child(level_scene)

# Skript für Game001
#1extends Node2D

# Variavlen für die Level-Welten
#1var LevelWorld001 
#1var LevelWorld002

# Wenn alles fertig geladen
#1func _ready():
    # hier mal den Zugriff auf Level Welten
    # in Variablen speichern
    #1LevelWorld001 = $Level/World001
    #1LevelWorld002 = $Level/World002

    # und zu beginn nur die Welt anzeigen
    #1show_World001()


# Eine Funktion für das Anzeigen der 1. Welt
#1func show_World001():
    #World001 anzeigen
   #1 LevelWorld001.visible = true
    
    #World002 ausblenden / verstecken
    #1LevelWorld002.visible = false

# Eine Funktion für das Anzeigen der 2. Welt
#1func show_World002():
    #World002 anzeigen
    #1LevelWorld002.visible = true
    
    #World001 ausblenden / verstecken
    #1LevelWorld001.visible = false