extends Spatial

var cameraRotationH = 0
var cameraRotationV = 0

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	$h/v/Camera.add_exception(get_parent())
	

func _input(event):
	if event is InputEventMouseMotion:
		cameraRotationH += -event.relative.x
		cameraRotationV += event.relative.y

func _physics_process(delta):
	$h.rotation_degrees.y = cameraRotationH
	$h/v.rotation_degrees.x = cameraRotationV
