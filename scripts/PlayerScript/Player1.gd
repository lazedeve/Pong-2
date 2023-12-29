extends Paddle

func _ready():
	self.position = Vector2(paddleOffset, DeviceManager.halfWindowHeight)


func _physics_process(_delta):
	
	var direction = movement.get_input(self)
	
	velocity = paddleSpeed * direction
	
	velocity = move_and_slide(velocity)
