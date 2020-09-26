extends Sprite

export var speed = 8

func _ready():
	pass

func _physics_process(_delta):
	position.y -= speed
	
	if global_position.y < -100:
		queue_free()


func _on_Area2D_body_entered(body):
	body.queue_free()
	queue_free()
