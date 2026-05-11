extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta
	if Input.is_action_just_pressed("ui_w") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	var direction := Input.get_axis("ui_a", "ui_d")
	if direction:
		velocity.x = direction * 200
	else:
		velocity.x = move_toward(velocity.x, 0, 200)

	move_and_slide()
