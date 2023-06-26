extends Control

var code = ["A124KH", "B125KH", "C120KH", "D130HK", "E131HK", "F132HK", "G144AB", "H145BC", "I140CD", "J159FU", "K158BU", "L157HU"]
var objects = []

func _ready():
	randomize()
	for i in 15:
		var obj = {}
		obj["id"] = randi() % 100
		obj["code"] = code[randi() % code.size()]
		obj["color"] = Color(randf(), randf(), randf(), 1)
		obj["speed"] = randf() * 10
		obj["distance"] = randf() * 10
		objects.append(obj)
	objects.sort_custom(CustomSorter, "sort")
	for i in objects:
		var obj = load("res://Prefab/Rect.tscn")
		obj = obj.instance()
		obj.id = i["id"]
		obj.code = i["code"]
		obj.color = i["color"]
		obj.speed = i["speed"]
		obj.distance = i["distance"]
		$Grid.add_child(obj)

class CustomSorter:
	static func sort(a, b):
		if a["distance"] > b["distance"]:
			return true
		return false
