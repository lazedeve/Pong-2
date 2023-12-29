extends Ball

var velocity = Vector2.ZERO
var direction = Vector2.ZERO
var ballSpeed = (horizontalDistance / ballTravelTime)

func _ready():
	
	self.position = Vector2(DeviceManager.halfWindowWidth, DeviceManager.halfWindowHeight)
	direction = Vector2(1.0, 0)


func _physics_process(delta):
	
	velocity = ballSpeed * direction
	
	var collision_info = move_and_collide(velocity * delta)
	
	if collision_info:
		
		var body = collision_info.collider
		direction = self.position - body.position
		direction = direction.normalized()
		velocity = ballSpeed * direction
		velocity = move_and_collide(velocity * delta)
	
	if self.position.x < 0 or self.position.x > DeviceManager.windowWidth:
		$"../Ball2".play()
		self.position = Vector2(DeviceManager.halfWindowWidth, DeviceManager.halfWindowHeight)
		
