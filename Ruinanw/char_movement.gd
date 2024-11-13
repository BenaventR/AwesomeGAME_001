extends CharacterBody2D

@onready var jump_2: AudioStreamPlayer = $jump2
@onready var bullet: AudioStreamPlayer = $bullet






const SPEED = 400.0
const JUMP_VELOCITY = -500.0
var jumpnum =0
var maxjump =2
var shootdir = 1
signal shoot

<<<<<<< HEAD
var maxHealth: int = 500
var currentHealth: int = 500
var timer = 0 
||||||| 471f27a
var maxHealth: int = 100
var currentHealth: int = 100
=======
var screen_size

>>>>>>> 97473f49de37ab2b11805d2dd8e8fd6e2cd312a4

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	if is_on_floor():
		jumpnum=0
	# Handle jump. DoubleJump actually...
	if Input.is_action_just_pressed("ui_accept") and jumpnum < maxjump:
		velocity.y = JUMP_VELOCITY
		jumpnum+=1
<<<<<<< HEAD
		$"../jump".play()
||||||| 471f27a
	
=======
		jump_2.play()
		
		

		
	
>>>>>>> 97473f49de37ab2b11805d2dd8e8fd6e2cd312a4

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	print(direction)
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
	
	timer += 1
	if timer >= 4:
		currentHealth -=1
		healthChanged.emit(currentHealth)
		timer = 0
	if currentHealth<1:
		playerdeath.emit()
		queue_free()
	
	
	
	if direction==1:
		shootdir = 1
		
	elif direction==-1:
		shootdir = -1
		
	
	var pos = get_node("../playa").global_position
	var sdir = Vector2(shootdir,0)
	if Input.is_action_just_pressed("shoot"):
		shoot.emit(pos,sdir)
<<<<<<< HEAD
		$"../bullet".play()
||||||| 471f27a
=======
		bullet.play()
		
>>>>>>> 97473f49de37ab2b11805d2dd8e8fd6e2cd312a4
		#print(direction)
<<<<<<< HEAD
	#if Input.is_action_just_pressed("dash"):
		#print('dash')
		#if direction:
			#velocity.x = direction * SPEED * 10

#func _on_timer_timeout() -> void:
	#currentHealth -=3
	#healthChanged.emit(currentHealth)
	#print(currentHealth)
#
	#if currentHealth<1:
		#playerdeath.emit()
		#queue_free()
	#
||||||| 471f27a

func _on_timer_timeout() -> void:
	currentHealth -=3
	healthChanged.emit(currentHealth)
	print(currentHealth)

	if currentHealth<1:
		playerdeath.emit()
		queue_free()
	
=======
		
>>>>>>> 97473f49de37ab2b11805d2dd8e8fd6e2cd312a4
