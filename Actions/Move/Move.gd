extends Action

class_name Move

onready var direction
onready var class_provider

func _ready():
	pass

func _init(properties, object).(properties, object):
	self.direction = properties.direction
	self.class_provider = load("res://ClassProvider.gd").new()
	print(self.class_provider)
	
func execute():
	load(class_provider.fetch_class(self.direction)).new(object)
	
