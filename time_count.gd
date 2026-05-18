extends Node2D
var vin = false
var win = 'You took '
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	vin = str(global.timer)
	win += vin 
	win += ' seconds. Did I not write that the purpose of the game is to press K at the start??? This game was actually for daydream and was to sacrafice your time for the theme but I had no coding understanding so the character barely moved'
	$RichTextLabel.add_text(win)
	await get_tree().create_timer(5.0).timeout
	get_tree().change_scene_to_file('res://start.tscn')


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
