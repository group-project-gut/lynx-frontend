extends KinematicBody2D

var available_class = {
	"UP": "res://Actions/Move/Directions/MoveUp.gd",
	"DOWN": "res://Actions/Move/Directions/MoveDown.gd",
	"RIGHT": "res://Actions/Move/Directions/MoveRight.gd",
	"LEFT": "res://Actions/Move/Directions/MoveLeft.gd",
	"Move": "res://Actions/Move/Move.gd",
	"Agent": "res://Object/Agent/Agent.gd"
}

func _init():
	pass

func fetch_class(var name) -> String:
	return self.available_class.get(name)
