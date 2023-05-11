extends "res://menus/spooky_dialog/SpookyDialog.gd"

onready var shake = UserSettings.graphics_shake_effect

const format_replace = "[center]{0}[/center]"

func display():
	var script = .display()
	label.parse_bbcode(format_replace.format([text]))
	return script
