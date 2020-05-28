extends Node2D

export(Gradient) var daylight_gradient
onready var light_canvas : CanvasModulate = get_node("/root/main/CanvasModulate")

var time = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	time += 0.001
	
	if(time > 1):
		time = 0
		
	light_canvas.color = daylight_gradient.interpolate(time)
	pass
