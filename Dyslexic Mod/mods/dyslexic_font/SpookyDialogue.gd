extends "res://menus/spooky_dialog/SpookyDialog.gd"

onready var shake = UserSettings.graphics_shake_effect

onready var format_replace = "[center][shake level=30]{0}[/shake][/center]"

func _ready() -> void:
		
	
	if shake == true:
		format_replace = "[center][shake level=30]{0}[/shake][/center]"
	elif shake == false:
		format_replace = "[center][shake level=0]{0}[/shake][/center]"
	else:
		format_replace = "[center][shake level=30]{0}[/shake][/center]"
		print("Shake setting neither true or false.")

func display() -> void:
	label.parse_bbcode(format_replace.format([text]))
