#Add Life Bottle to lifeBottleQuantity
extends Area2D

func _physics_process(delta):
	
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "Player" and get_node("../../../Player").lifeBottleQuantity < 10:
			get_node("../../../Player").lifeBottleQuantity += 1
			queue_free()