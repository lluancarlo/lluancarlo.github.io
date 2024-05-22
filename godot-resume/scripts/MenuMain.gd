extends PanelContainer
class_name MenuMain

signal options_pressed()
signal reset_pressed()

@export var linkedin_link : String
@export var github_link : String
@export var options_menu : MenuOption


func _ready() -> void:
	hide()


func _physics_process(_d: float) -> void:
	if Input.is_action_just_pressed("menu"):
		if visible:
			_on_resume_pressed()
		elif not options_menu.visible:
			get_tree().paused = true
			show()


func _on_resume_pressed() -> void:
	get_tree().paused = false
	hide()


func _on_reset_pressed() -> void:
	reset_pressed.emit()


func _on_options_pressed() -> void:
	options_pressed.emit()


func _on_linked_in_pressed() -> void:
	if not linkedin_link.is_empty():
		OS.shell_open(linkedin_link)


func _on_git_hub_pressed() -> void:
	if not github_link.is_empty():
		OS.shell_open(github_link)
