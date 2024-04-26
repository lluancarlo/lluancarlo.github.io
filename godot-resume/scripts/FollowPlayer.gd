extends Camera3D

@export var _player_node : NodePath
@export var offset_position := Vector3(0, 2.8, 2.6)
@export var offset_rotation := Vector3(-25, -135, 0)
@onready var _player = get_node(_player_node)

func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	position = _player.position + offset_position
	rotation_degrees = offset_rotation
