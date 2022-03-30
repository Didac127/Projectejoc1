extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var velocitat_rapida=3
var velocitat_lenta=1
var time=0
# Called when the node enters the scene tree for the first time.
func _ready():
	position=Vector2(0,0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if time<3:
		time=time+1*delta
	else:
		if position.x<600:
			position.x=position.x+velocitat_lenta
		else:
			position.x=position.x+velocitat_rapida
