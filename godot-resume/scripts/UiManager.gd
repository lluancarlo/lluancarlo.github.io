extends Control
class_name UiManager

@export var _player : PlayerCar
@export_group(&"Sub UI")
@export var _debug_panel : Control
@export var _hud_area_overlay : AreaOverlay
@export_group(&"Sounds")
@export var _audio_open : AudioStreamPlayer
@export var _audio_close : AudioStreamPlayer
@export_group(&"Dialogs")
@export var _popups_control : Control
@export var _warning_dialog : BasePopup
@export var _where_born_dialog : BasePopup
@export var _where_living_dialog : BasePopup
@export var _university_dialog : BasePopup
@export var _exp_consinco_dialog : BasePopup
@export var _exp_magit_dialog : BasePopup
@export var _exp_topgaming_dialog : BasePopup
@export var _exp_deltaengine_dialog : BasePopup

var opened_popup : Control

func _ready():
	PlayerInput.interactive_pressed.connect(_on_interactive_pressed)
	set_all_popups_invisible()
	_warning_dialog.visible = true


func set_all_popups_invisible() -> void:
	for popup in _popups_control.get_children():
		popup.visible = false


func open_popup(id: int) -> void:
	match(id):
		GameData.Popups.WhereBorn:
			opened_popup = _where_born_dialog
		GameData.Popups.WhereLiving:
			opened_popup = _where_living_dialog
		GameData.Popups.University:
			opened_popup = _university_dialog
		GameData.Popups.Exp_Consinco:
			opened_popup = _exp_consinco_dialog
		GameData.Popups.Exp_Magit:
			opened_popup = _exp_magit_dialog
		GameData.Popups.Exp_TopGaming:
			opened_popup = _exp_topgaming_dialog
		GameData.Popups.Exp_DeltaEngine:
			opened_popup = _exp_deltaengine_dialog
	opened_popup.open()
	_audio_open.play()


func _on_interactive_pressed() -> void:
	if opened_popup != null:
		opened_popup.close()
		opened_popup = null
	elif GameData.on_popup_id != 0:
		open_popup(GameData.on_popup_id)
		_player.can_drive = false


func _on_closed() -> void:
	_audio_close.play()
	opened_popup = null
	_player.can_drive = true


func show_area_overlay(area_name: String) -> void:
	_hud_area_overlay.show_new_area(area_name)
