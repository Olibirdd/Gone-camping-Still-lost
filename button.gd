extends Sprite2D

func pressed():
	frame = 2
	owner.push_rune(get_index())

func unpressed():
	frame = 1
	


func _on_player_entered(body: Node2D) -> void:
	pressed()


func _on_player_exited(body: Node2D) -> void:
	unpressed()
