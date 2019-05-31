# Skript für Game001
extends Node2D

# Variavlen für die Level-Welten
var LevelWorld001
var LevelWorld002

# Wenn alles fertig geladen
func _ready():
    # hier mal den Zugriff auf Level Welten
    # in Variablen speichern
    LevelWorld001 = $Level/World001
    LevelWorld002 = $Level/World002

    # und zu beginn nur die Welt anzeigen
    show_World001()


# Eine Funktion für das Anzeigen der 1. Welt
func show_World001():
    #World001 anzeigen
    LevelWorld001.visible = true
    
    #World002 ausblenden / verstecken
    LevelWorld002.visible = false
    
# Eine Funktion für das Anzeigen der 2. Welt
func show_World002():
    #World002 anzeigen
    LevelWorld002.visible = true
    
    #World001 ausblenden / verstecken
    LevelWorld001.visible = false