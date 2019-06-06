#Add Life Bottle to lifeBottleQuantity
extends Area2D

func _on_LifeBottle001_body_entered(body):
	if body.name == "Player001" and body.lifeBottleQuantity < 10:
			body.lifeBottleQuantity += 1
			queue_free()