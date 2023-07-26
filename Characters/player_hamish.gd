extends CharacterBody2D

#@export makes the variable available in the inspector. 
@export var move_speed : float = 50
@export var normalize : bool = false


func _physics_process(delta):
	var input_direction = Vector2(
		Input.get_action_strength('right') - Input.get_action_strength('left'),
		Input.get_action_strength('down') - Input.get_action_strength('up')
		
	)
	print(input_direction)
	
	if normalize:
		velocity = input_direction.normalized() * move_speed
	if !normalize: 
		velocity = input_direction * move_speed
	
	move_and_slide()
	
	
	
