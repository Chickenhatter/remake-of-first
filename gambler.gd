extends Node2D
var roll = false
var a = 0
var b = 0
var c = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if roll == true:
		a = 0
		b = 0
		c = 0
		roll = false
		await get_tree().create_timer(1.0).timeout
		a = randi_range(1,3)
		b = randi_range(1,3)
		c = randi_range(1,3)
	if a == 1:
		$Node2D/first/seven.play('seven')
		$Node2D/first/apple.play('no')
		$Node2D/first/grape.play('no')
	elif a == 2:
		$Node2D/first/seven.play('no')
		$Node2D/first/apple.play('apple')
		$Node2D/first/grape.play('no')
	elif a == 3:
		$Node2D/first/seven.play('no')
		$Node2D/first/apple.play('no')
		$Node2D/first/grape.play('grape')
	else:
		$Node2D/first/seven.play('no')
		$Node2D/first/apple.play('no')
		$Node2D/first/grape.play('no')
	if b == 1:
		$Node2D/second/seven.play('seven')
		$Node2D/second/apple.play('no')
		$Node2D/second/grape.play('no')
	elif b == 2:
		$Node2D/second/seven.play('no')
		$Node2D/second/apple.play('apple')
		$Node2D/second/grape.play('no')
	elif b == 3:
		$Node2D/second/seven.play('no')
		$Node2D/second/apple.play('no')
		$Node2D/second/grape.play('grape')
	else:
		$Node2D/second/seven.play('no')
		$Node2D/second/apple.play('no')
		$Node2D/second/grape.play('no')
	if c == 1:
		$Node2D/third/seven.play('seven')
		$Node2D/third/apple.play('no')
		$Node2D/third/grape.play('no')
	elif c == 2:
		$Node2D/third/seven.play('no')
		$Node2D/third/apple.play('apple')
		$Node2D/third/grape.play('no')
	elif c == 3:
		$Node2D/third/seven.play('no')
		$Node2D/third/apple.play('no')
		$Node2D/third/grape.play('grape')
	else:
		$Node2D/third/seven.play('no')
		$Node2D/third/apple.play('no')
		$Node2D/third/grape.play('no')



func _on_roller_body_entered(body: Node2D) -> void:
	if roll != true:
		if body.name == 'main_character':
			roll = true
