extends VehicleBody3D
class_name PlayerController


@onready var _car_wheel_rf := $WheelRL as VehicleWheel3D
var max_rpm := 8000
var max_torque := mass * 2.0


func _ready() -> void:
	pass


func _physics_process(delta: float) -> void:
	steering = lerp(steering, Input.get_axis("right", "left") * 0.4, 5 * delta)
	engine_force = Input.get_axis("back", "forward") * max_torque * ( 1 - _car_wheel_rf.get_rpm() / max_rpm)
