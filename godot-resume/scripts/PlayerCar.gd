extends VehicleBody3D
class_name PlayerCar

@onready var _car_wheel_rf := $WheelRL as VehicleWheel3D
var max_rpm := 8000
var max_torque := mass * 2.0
var can_drive := true

func _physics_process(delta: float) -> void:
	if can_drive:
		steering = lerp(steering, PlayerInput.axisX * 0.4, 5 * delta)
		engine_force = PlayerInput.axisY * max_torque * ( 1 - _car_wheel_rf.get_rpm() / max_rpm)
	else:
		linear_velocity = Vector3.ZERO
