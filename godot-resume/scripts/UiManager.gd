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
@onready var popups_node = $Popups as Control

var opened_popup : Control

func _ready():
	PlayerInput.interactive_pressed.connect(_on_interactive_pressed)
	set_all_popups_invisible()
	warning_dialog.visible = true

func set_all_popups_invisible() -> void:
	for popup in popups_node.get_children():
		popup.visible = false

func open_popup(id: int) -> void:
	match(id):
		GameData.Popups.WhereBorn:
			opened_popup = where_born_dialog
		GameData.Popups.WhereLiving:
			opened_popup = where_living_dialog
		GameData.Popups.University:
			opened_popup = university_dialog
		GameData.Popups.Exp_Consinco:
			opened_popup = exp_consinco_dialog
		GameData.Popups.Exp_Magit:
			opened_popup = exp_magit_dialog
		GameData.Popups.Exp_TopGaming:
			opened_popup = exp_topgaming_dialog
		GameData.Popups.Exp_DeltaEngine:
			opened_popup = exp_deltaengine_dialog
	opened_popup.open()

func _on_interactive_pressed() -> void:
	if opened_popup != null:
		opened_popup.close()
		opened_popup = null
	elif GameData.on_popup_id != 0:
		open_popup(GameData.on_popup_id)
		player.can_drive = false
	

func _on_warning_popup_close() -> void:
	debug_panel.visible = true

func _on_closed() -> void:
	opened_popup = null
	player.can_drive = true
