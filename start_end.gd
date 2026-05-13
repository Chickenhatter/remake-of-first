extends Node2D
var inside = false
var tim = true
var active = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if tim == true:
		tim = false
		await get_tree().create_timer(0.01).timeout
		global.timer += 0.01
		tim = true
	if inside == true:
		if Input.is_action_just_pressed('ui_k'):
			get_tree().change_scene_to_file('res://time_count.tscn')
	if active == true:
		active = false
		$RichTextLabel.add_text("Oh, you are supposed to press K at the start of the game")
		await get_tree().create_timer(3.0).timeout
		$RichTextLabel.text = ("")
		


func _on_start_end_body_entered(body: Node2D) -> void:
	if body.name == 'main_character':
		inside = true

func _on_start_end_body_exited(body: Node2D) -> void:
	if body.name == 'main_character':
		inside = false


func _on_message_body_entered(body: Node2D) -> void:
	if body.name == 'main_character':
		active = true
