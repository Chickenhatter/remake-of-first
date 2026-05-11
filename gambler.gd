extends Node2D
var roll = false
var fin = Vector2(0,0)
var him = false
var a = 0
var b = 0
var c = 0
var d = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if global.crosser == false:
		if roll == true:
			him = true
			a = 0
			b = 0
			c = 0
			roll = false
			global.him = true
			await get_tree().create_timer(1.0).timeout
			fin = Vector2(0,0)
			a = randi_range(1,3)
			b = randi_range(1,3)
			c = randi_range(1,3)
			if global.crosser == false:
				d += 1
				if d == 3:
					$"../Tileset/TileMapLayer2".position = Vector2(1000,1000)
					global.jim = true
					d = 4
				global.him = false
			await get_tree().create_timer(1.0).timeout
			$"../Tileset/TileMapLayer2".position = Vector2(0,0)
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
		if d == 4:
			global.character_move = false
			d = 0
	if a == 1:
		if b == 1:
			if c == 1:
				global.crosser = true
				$"../Tileset/escape".global_position = Vector2(1000,1000)


func _on_roller_body_entered(body: Node2D) -> void:
	if global.crosser != true:
		if body.name == 'main_character':
			roll = true
