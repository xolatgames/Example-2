extends ColorRect

var id : int
var code : String
var speed : float
var distance : float

func _ready():
	$id.text = str(id)
	$code.text = code
	$speed.text = str(speed)
	$distance.text = str(distance) + "M"
