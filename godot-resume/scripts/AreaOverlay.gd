extends Control
class_name AreaOverlay

@export var _label : Label
var is_showing : bool
var fade_duration := 0.5


func _ready() -> void:
	modulate.a = 0


func show_new_area(area_name: String, duration: float = 2.0) -> void:
	_label.text = area_name
	await create_tween().tween_property(self, "modulate:a", 1.0, fade_duration).from(0.0).finished
	await get_tree().create_timer(duration).timeout
	await create_tween().tween_property(self, "modulate:a", 0.0, fade_duration).from(1.0).finished
