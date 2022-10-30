extends TextEdit

var keywords = ['and', 'assert', 'break', 'class', 'continue', 'def', 'del', 'elif', 'else',
'except', 'exec', 'finally', 'for', 'from', 'global', 'if', 'import', 'in', 'is', 'lambda',
'not', 'or', 'pass', 'print', 'raise', 'return', 'try', 'while', 'yield', 'None', 'True', 'False']

# taken from dracula theme
var keyword_color = "#8be9fd"
var comment_color = "#6272a4"
var string_color = "#f1fa8c"

func _ready():
	for k in keywords:
		add_keyword_color(k, Color(keyword_color))
	
	add_color_region('#', '', Color(comment_color), true)
	add_color_region('"', '"', Color(string_color))
