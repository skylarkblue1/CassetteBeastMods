extends "res://global/UserSettings.gd"

export (bool) var graphics_shake_effect:bool = true

func _ready() -> void:
	_register_console_setting("graphics_shake_effect", TYPE_BOOL)

func load_settings() -> void:
	var config = yield (JobQueue.post(Bind.new(self, "_load_settings_file")).join(), "completed")	
	graphics_shake_effect = config.get_value("graphics", "graphics_shake_effect", true) == true
	
func save_settings() -> void:
	var config = ConfigFile.new()
	config.set_value("graphics", "graphics_shake_effect", graphics_shake_effect)

