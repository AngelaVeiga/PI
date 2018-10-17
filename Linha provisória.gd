extends KinematicBody2D

signal hit
const GRAVITY=10
const SPEED=200
const JUMP_HEIGHT=-100
var screensize

func _ready():
    screensize = get_viewport_rect().size

var motion = Vector2()

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		motion.x=SPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x=-SPEED
	else:
		 motion.x=0
		
	if Input.is_action_pressed("ui_up"):
		motion.y=-SPEED
	elif Input.is_action_pressed("ui_down"):
		motion.y=SPEED
	else:
		 motion.y=0
	motion = move_and_slide(motion)
	
	position.x=clamp(position.x,0,screensize.x)
	position.y=clamp(position.y,0,screensize.y)

	pass
	