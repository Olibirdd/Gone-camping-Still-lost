extends Node2D


@export var door : Sprite2D
@export var runes_order : Array[int]

var stack = []

func push_rune(value):
	stack.push_back(value)
	if stack.size() > 4:
		stack.pop_front()
	print(stack)
	
	if door == null:
		return
		
	if stack == runes_order:
		door.open_door()
		print("Door Opened")
	else:
		door.close_door()
