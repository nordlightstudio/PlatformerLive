#Trap01
extends Area2D

var hitPlayer = false

func _physics_process(delta):
	
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and hitPlayer == false:
			get_node("../../../Player").healthPlayer -= 10
			hitPlayer = true