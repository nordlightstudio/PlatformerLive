#Trap01
extends Area2D

func _on_Trap001_body_entered(body):
	if body.name == "Player001":
		body.healthPlayer -= 10