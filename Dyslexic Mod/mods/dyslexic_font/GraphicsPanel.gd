extends "res://menus/settings/GraphicsPanel.gd"

onready var shake_input = find_node("ShakeInput")

func is_dirty() -> bool:
	if shake_input.selected_value != UserSettings.graphics_shake_effect:
		return true
	return false

func apply() -> void:
	UserSettings.graphics_shake_effect = shake_input.selected_value
	
func reset() -> void:
	shake_input.selected_value = UserSettings.graphics_shake_effect
