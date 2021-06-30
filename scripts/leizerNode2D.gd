extends Node2D






func _ready():
		pass 
var vel = 200

func _process(delta):
		translate(Vector2(0 , -1) * vel * delta)
	
