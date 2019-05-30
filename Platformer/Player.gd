# Player
extends KinematicBody2D

# Var
const UP = Vector2(0, -1)
const GRAVITY = 20
const MAX_SPEED = 300
const JUMP_HEIGHT = -550
const ACCELERATION = 50

var motion = Vector2()
var friction = false
var testVariable = true

#Health Player System
var healthPlayer = 100
onready var healthPlayerLabel = $UI/CenterContainer/VBoxContainer/Health
#LifeBottleQuantity
var lifeBottleQuantity = 0
onready var lifeBottleQuantityLabel = $UI/CenterContainer/VBoxContainer/LifeBottleQuantity

#Gold Coin System
var goldCoin = 0
onready var goldCoinLabel = $UI/CenterContainer/VBoxContainer/GoldCoin

# Physic Process
func _physics_process(delta):
	
	#Send var healthPlayer to UI
	healthPlayerLabel.text = str("Health: ", healthPlayer)
	#Send var lifeBottleQuantity to UI
	lifeBottleQuantityLabel.text = str("Life Bottles: ", lifeBottleQuantity)
	#Player dead
	if healthPlayer <= 0:
		get_tree().change_scene("res://PlayerDeadMenu.tscn")
	
	#Send var goldCoin to UI
	goldCoinLabel.text = str("Gold Coins: ", goldCoin)
	
	motion.y += GRAVITY
		
	# Movement
	if Input.is_action_pressed("ui_right"):
		motion.x = min(motion.x+ACCELERATION, MAX_SPEED)
		$Sprite.set_flip_h(false)
		$Sprite.play("Run")
	elif Input.is_action_pressed("ui_left"):
		motion.x = max(motion.x-ACCELERATION, -MAX_SPEED)
		$Sprite.set_flip_h(true)
		$Sprite.play("Run")
	else:
		motion.x = lerp(motion.x, 0, 0.2)
		$Sprite.play("Idle")
		friction = true
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.2)
	else:
		if motion.y < 0:
			$Sprite.play("Jump")
		else:
			$Sprite.play("Fall")
		if friction == true:
			motion.x = lerp(motion.x, 0, 0.05)

	motion = move_and_slide(motion, UP)
	pass

	# Life Bottle System
	if Input.is_action_just_pressed("useLifeBottle") and lifeBottleQuantity > 0 and healthPlayer < 100:
		healthPlayer += 10
		lifeBottleQuantity -= 1