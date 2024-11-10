extends CharacterBody2D


const SPEED = 400.0
const JUMP_VELOCITY = -500.0
var platVel = Vector2(0,0)
var jumpnum =0
var maxjump =2
var shootdir = 1
signal shoot
signal healthChanged
signal playerdeath

var maxHealth: int = 100
var currentHealth: int = 100

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	if is_on_floor():
		jumpnum=0
	# Handle jump. DoubleJump actually...
	if Input.is_action_just_pressed("ui_accept") and jumpnum < maxjump:
		velocity.y = JUMP_VELOCITY
		velocity.x = platVel.x
		jumpnum+=1
	

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	#print(direction)
	if direction:
		velocity.x = direction * SPEED
	elif is_on_floor():
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	platVel = get_platform_velocity()
	
	
	
	if direction==1:
		shootdir = 1
	elif direction==-1:
		shootdir = -1
	
	var pos = get_node("../playa").global_position
	var sdir = Vector2(shootdir,0)
	if Input.is_action_just_pressed("shoot"):
		shoot.emit(pos,sdir)
		#print(direction)

func _on_timer_timeout() -> void:
	currentHealth -=4
	healthChanged.emit(currentHealth)
	if currentHealth<1:
		playerdeath.emit()
		queue_free()
	#print(currentHealth)
