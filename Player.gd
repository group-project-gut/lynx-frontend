extends KinematicBody2D

onready var class_provider = load("res://ClassProvider.gd").new()
onready var BASE_CLASS_NAME = "base_class_name"
onready var PROPERTIES = "properties"
onready var CLASS_NAME = "class_name"

func _ready():
	pass 

func _init():
	pass

func set_position(vector):
	self.position += vector

func parse_commands(commands):
	for command in commands:
		if command.empty():
			print("Empty command!")
			continue 
			
		var json_command = parse_json(command)
		print(command)
		var action_class = class_provider.fetch_class(json_command[CLASS_NAME])
		print(action_class)
		var action = load(action_class).new(json_command[PROPERTIES], self)
		action.execute()
		yield(get_tree().create_timer(0.5), "timeout")
#
func extract_data(json):
	return {
		BASE_CLASS_NAME: json[BASE_CLASS_NAME],
		CLASS_NAME: json[CLASS_NAME],
		PROPERTIES: json[PROPERTIES]
	}	
