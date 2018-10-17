extends CollisionShape2D


const GRAVITY=10

var motion= Vector2()

func _physics_process(delta):
	motion.y=GRAVITY
	if is_on_floor():
		motion.y=-10
	motion = move_and_slide(motion)

	pass
func _on_RigidBody2D_body_entered(body):
	hide()
	emite_signal("hit")
	call_deferred("set_monitoring",false)
	
func start (pos):
	position=pos
	show()
	monitoring=true