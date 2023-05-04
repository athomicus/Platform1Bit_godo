extends CharacterBody2D


const SPEED = 200.0
const JUMP_VELOCITY = -300.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle Jump.
	#
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right") # -1 lub 0 lub 1
	if direction:
		
		velocity.x = direction * SPEED
		$AnimatedSprite2D.play("run")
		if direction == -1:
			$AnimatedSprite2D.flip_h = true
		else:
			$AnimatedSprite2D.flip_h = false 
			
	else:
		#print("idle:",direction)
		if not is_on_floor(): 
			$AnimatedSprite2D.play("jump")
		else:
			$AnimatedSprite2D.play("Idle")
			
		velocity.x = move_toward(velocity.x, 0, SPEED /2)
		
		
	
		

	move_and_slide()


 
