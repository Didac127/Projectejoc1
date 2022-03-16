extends Area2D


var velocitat=400
var posicio_inicial=Vector2(0,100)
var direccio=Vector2(0,0)
var colorpersonatge=modulate
var colorbarres=Color(1,1,1)
func _ready():
	position= posicio_inicial
	rotation_degrees=0

func _process(delta):

	direccio=Vector2.ZERO
	if Input.is_action_pressed("mou dreta"):
		direccio+=Vector2.RIGHT
	if Input.is_action_pressed("mou esquerre"):
		direccio+=Vector2.LEFT
	if Input.is_action_pressed("mou endavant"):
		direccio+=Vector2.UP
	if Input.is_action_pressed("mou enrrere"):
		direccio+=Vector2.DOWN
	position+=direccio.normalized()*velocitat*delta


func _on_Area2D_area_entered(area):
	colorbarres=area.modulate
	modulate = Color(1,0,0)
	area.modulate = Color(0,1,0)
	

func _on_Area2D_area_exited(area):
	modulate = colorpersonatge
	area.modulate = colorbarres
