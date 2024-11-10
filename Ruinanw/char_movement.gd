extends CharacterBody2D


const SPEED = 400.0
const JUMP_VELOCITY = -500.0
var jumpnum =0
var maxjump =2
signal shoot


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	if is_on_floor():
		jumpnum=0
	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and jumpnum < maxjump:
		velocity.y = JUMP_VELOCITY
		jumpnum+=1

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
func get_input():
	var dir = Input.get_axis("ui_left", "ui_right")
	var pos = $playa.position
	if Input.is_action_pressed("shoot"):
		shoot.emit(pos,dir)
		print(pos)
