extends Label
@onready var timer: Timer = $Timer

var countdown: int = 120

func updateLabelText() -> void:
	text = str(countdown)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	updateLabelText() # INI ADALAH MENGUBAH LABEL MENJADI ANGKA COUNTDOWN
	timer.start()
	timer.wait_time = 1
	timer.autostart = true

func _on_timer_timeout() -> void:
	if countdown > 0:
		countdown -= 1
		updateLabelText()
	else:
		timer.stop()
		Controller.reset_coin()
		get_tree().reload_current_scene()
