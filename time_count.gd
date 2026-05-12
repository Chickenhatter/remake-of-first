extends Node2D
var vin = false
var win = 'You took '
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	vin = str(global.timer)
	win += vin 
	win += ' seconds. Did I not write that the purpose of the game is to press K at the start???'
	$RichTextLabel.add_text(win)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
