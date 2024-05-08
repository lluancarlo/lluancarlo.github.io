extends BasePopup
class_name WarningPopup

signal closed()

func _on_button_pressed():
	closed.emit()
	queue_free()
