class_name Movement


func get_input(body: KinematicBody2D):
	
	var input = Vector2.ZERO
	
	if body.name == "Player1":
		
		if Input.is_key_pressed(KEY_W):
			input.y = -1
		if Input.is_key_pressed(KEY_S):
			input.y = 1
		if Input.is_key_pressed(KEY_A):
			input.x = -1
		if Input.is_key_pressed(KEY_D):
			input.x = 1
	
	if body.name == "Player2":
		
		if Input.is_action_pressed("ui_up"):
			input.y = -1
		if Input.is_action_pressed("ui_down"):
			input.y = 1
		if Input.is_action_pressed("ui_left"):
			input.x = -1
		if Input.is_action_pressed("ui_right"):
			input.x = 1
	
	return input.normalized()
