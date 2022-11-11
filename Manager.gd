extends Node

const url = "https://server.blazej-smorawski.com/send_code"
var headers = ["Content-Type: application/json"]
onready var http_request = get_node("HTTPRequest")
onready var player = get_node("../Player")

func _ready():
	pass

func _on_RunButton_button_up():
	var code = get_node("../UI/CodeEditor").text.split("\n")
	var query = to_json({"code" : code})
	var err = http_request.request(url, headers, false, HTTPClient.METHOD_POST, query)
	if err != 0:
		print("Error sending request: " + str(err))

func _on_HTTPRequest_request_completed(result, response_code, headers, body):
	if result != 0:
		print("Error response code: " + str(response_code))
	var output = JSON.parse(body.get_string_from_utf8()).result
	player.parse_commands(output.stdout)
