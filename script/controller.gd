extends Node

var coin: int = 0

signal my_coin(coin: int)

func add_coin() -> void:
	coin += 1
	emit_signal("my_coin", coin)
	print("coin saat ini: ", coin)
	
func reset_coin() -> void:
	coin = 0
	emit_signal("my_coin", coin)
	
	
