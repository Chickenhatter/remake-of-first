extends CharacterBody2D
var fin = Vector2(0,0)
var tren = false
const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	if global.character_move == true:
		if not is_on_floor():
			tren = true
			velocity += get_gravity() * delta
		if is_on_floor():
			if tren == true:
				$AudioStreamPlayer2D.play()
				tren = false
		if Input.is_action_just_pressed("ui_w") and is_on_floor():
			velocity.y = JUMP_VELOCITY
		var direction := Input.get_axis("ui_a", "ui_d")
		if direction:
			velocity.x = direction * 200
		else:
			velocity.x = move_toward(velocity.x, 0, 200)
	else:
		velocity.x = 0
	if global.him == true:
		fin = $"../../Node2D/move_aside".global_position 
		$".".global_position = position.move_toward(fin, 300 * delta)
	if global.down == true:
		fin = $"../../Node2D/bottom".global_position 
	if global.jim == true:
		$".".global_position = position.move_toward(fin, 500 * delta)
	move_and_slide()


func _on_uptoleft_body_entered(body: Node2D) -> void:
	if body.name == 'main_character':
		fin = $"../../Node2D/left".global_position
		global.down = false


func _on_lefttoup_body_entered(body: Node2D) -> void:
	if body.name == 'main_character':
		fin = $"../../Node2D/top".global_position
		global.down = false


func _on_uptoright_body_entered(body: Node2D) -> void:
	if body.name == 'main_character':
		fin = $"../../Node2D/right".global_position
		global.down = false


func _on_stop_body_entered(body: Node2D) -> void:
	if body.name == 'main_character':
		global.character_move = true
		global.jim = false
		global.down = true
