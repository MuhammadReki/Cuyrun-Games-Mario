extends Node2D


func _on_area_2d_body_entered(_body: Node2D) -> void:
	print("player mengambil koin")
	Controller.add_coin()
	queue_free()
