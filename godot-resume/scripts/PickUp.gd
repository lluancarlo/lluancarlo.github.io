extends Node3D

@onready var _mesh = $Mesh as MeshInstance3D
@onready var _label3D = $Label3D as Label3D
@onready var _animation = $AnimationPlayer as AnimationPlayer
@export var popup_id : GameData.Popups
@export var placeholder := "Interact!"

var player_nearby : bool
var acc : float
var text_press = "Press [E] to open"


func _ready() -> void:
	_label3D.text = placeholder


func _process(delta: float) -> void:
	if player_nearby:
		acc = 0
		change_mesh_material_color(Color(0.2, 0.2, 1));
	else:
		acc += delta
		var variation = 1 - abs(sin(acc)) * 0.4
		change_mesh_material_color(Color(variation, variation, 1));


func change_mesh_material_color(color: Color) -> void:
	_mesh.mesh.material.albedo_color = color


func _on_area_3d_body_shape_entered(_br: RID, body: Node3D, _bsi: int, _lsi: int) -> void:
	if body is PlayerCar:
		_animation.play("enter")
		print(_label3D.text)
		_label3D.text = text_press
		player_nearby = true
		GameData.on_popup_id = popup_id
		print(_label3D.text)


func _on_area_3d_body_shape_exited(_br: RID, body: Node3D, _bsi: int, _lsi: int) -> void:
	if body is PlayerCar:
		_animation.play("enter")
		_label3D.text = placeholder
		player_nearby = false
		GameData.on_popup_id = 0
