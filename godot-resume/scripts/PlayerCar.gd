extends VehicleBody3D
class_name PlayerCar

@onready var _wheel_fl := $WheelFL as VehicleWheel3D
@onready var _wheel_fr := $WheelFR as VehicleWheel3D
@onready var _audio_engine := $AudioEngine as AudioStreamPlayer3D
@onready var _audio_impact := $AudioImpact as AudioStreamPlayer3D
var max_rpm := 8000
var max_torque := mass * 2.0
var can_drive := true
var previous_velocity : float

func _physics_process(delta: float) -> void:
	var current_rpm = get_rpm()
	if can_drive:
		steering = lerp(steering, PlayerInput.axisX * 0.4, 5 * delta)
		engine_force = PlayerInput.axisY * max_torque * ( 1 - current_rpm / max_rpm)
	else:
		linear_velocity = Vector3.ZERO
	
	# Engine sound
	var rpm = ((abs(current_rpm) / 100) + 1) / 5
	_audio_engine.pitch_scale = lerpf(_audio_engine.pitch_scale, rpm, 0.2)
	
	# Impact sound
	if can_drive && abs(linear_velocity.length() - previous_velocity) > 1.0:
		_audio_impact.play()
	previous_velocity = linear_velocity.length()

func get_rpm() -> float:
	return (_wheel_fl.get_rpm() + _wheel_fr.get_rpm()) / 2.0
