extends HBoxContainer
class_name ShowFps

@export var _label : Label
var nodeNamesToGuess = ["Value", "value"]

func _ready():
	if (_label == null):
		for child in get_children():
			if (child.name in nodeNamesToGuess):
				_label = child
				break
	assert(_label != null, "Must define label to show value")
	

func _process(_delta):
	_label.text = str(Engine.get_frames_per_second())
