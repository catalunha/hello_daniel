extends Node2D

var vel = 100
const PRE_LAZER = preload("res://scenes/LazerNode2D.tscn")


func _ready():
	pass 
	
func _process(delta):
	var dirx = 0
	var diry = 0
	
	if Input.is_action_pressed("ui_left"):
		dirx += -1
	
	if Input.is_action_pressed("ui_right"):
		dirx += 1
	
	if Input.is_action_pressed("ui_up"):
		diry += -1
	
	if Input.is_action_pressed("ui_down"):
		diry += 1
	
	if Input.is_action_just_pressed("ui_space"):
		var PRE_LAZER
	translate(Vector2(dirx,diry) * vel * delta)
	
	if Input.is_action_just_pressed("ui_space"):
		var lazer = PRE_LAZER.instance()
		get_parent().add_child(lazer)
		lazer.global_position = global_position
	
	
	
