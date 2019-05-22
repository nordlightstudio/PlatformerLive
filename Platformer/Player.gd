# Player
extends KinematicBody2D

var test = 1000

# Var
const UP = Vector2(0, -1)
const GRAVITY = 20
const MAX_SPEED = 300
const JUMP_HEIGHT = -550
const ACCELERATION = 50

var motion = Vector2()
var friction = false
var testVariable = true

# Physic Process
func _physics_process(delta):
	
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