extends Node

func _on_button_pressed():
	$"../Debugs".visible = true
	queue_free()
