extends Control

@export var player : PlayerCar
@export var debug_panel : Control
@export var warning_dialog : BasePopup
@export var where_born_dialog : BasePopup
@export var where_living_dialog : BasePopup
@export var university_dialog : BasePopup
@export var exp_consinco_dialog : BasePopup
@export var exp_magit_dialog : BasePopup
@export var exp_topgaming_dialog : BasePopup
@export var exp_deltaengine_dialog : BasePopup

var opened_popup : Control

func _ready():
	PlayerInput.interactive_pressed.connect(_on_interactive_pressed)
	debug_panel.visible = false
	warning_dialog.visible = true

func open_popup(id: int) -> void:
	match(id):
		GameData.Popups.Warning:
			pass
		GameData.Popups.WhereBorn:
			where_born_dialog.open()
		GameData.Popups.WhereLiving:
			where_living_dialog.open()
		GameData.Popups.University:
			university_dialog.open()
		GameData.Popups.Exp_Consinco:
			exp_consinco_dialog.open()
		_:
			pass

func _on_interactive_pressed() -> void:
	if GameData.on_popup_id != 0:
		open_popup(GameData.on_popup_id)
		player.can_drive = false

func _on_warning_popup_close() -> void:
	debug_panel.visible = true


func _on_closed() -> void:
	player.can_drive = true
