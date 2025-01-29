extends Area2D

var entered

func _ready():
	entered = false

func _on_body_entered(body):
	entered = true

func _on_body_exited(body):
	entered = false

func _process(_delta):
	if entered == true:
		if Input.is_action_just_pressed("ui_accept"):
			get_tree().change_scene_to_file("res://Testing Folder/scenes/world2.tscn")
