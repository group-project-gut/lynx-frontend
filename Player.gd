extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func parseCommands(commands):
	for command in commands:
		var c = command.split(' ')
		if c[0] == "MOVE":
			match c[1]:
				"LEFT":
					position.x -= 10
				"UP":
					position.y -= 10
				"RIGHT":
					position.x += 10
				"DOWN":
					position.y += 10
		yield(get_tree().create_timer(0.5), "timeout")
