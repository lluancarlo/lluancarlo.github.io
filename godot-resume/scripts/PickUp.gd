extends Node3D

@export var _mesh : MeshInstance3D
@export var _label3D : Label3D
#@onready var _label3D = $Label3D as Label3D
@export var _animation : AnimationPlayer
@export var popup_id : GameData.Popups
@export var placeholder := "Interact!"

var player_nearby : bool
var acc : float
var text_interact = "Interact!"
var text_press = "Press [E] to open"

func _process(delta: float) -> void:
	_label3D.text = placeholder
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
		print(name + " receving player")
		_animation.play("enter")
		_label3D.text = text_press
		print(_label3D.text)
		player_nearby = true
		GameData.on_popup_id = popup_id


func _on_area_3d_body_shape_exited(_br: RID, body: Node3D, _bsi: int, _lsi: int) -> void:
	if body is PlayerCar:
		_animation.play("enter")
		_label3D.text = text_interact
		player_nearby = false
		GameData.on_popup_id = 0
