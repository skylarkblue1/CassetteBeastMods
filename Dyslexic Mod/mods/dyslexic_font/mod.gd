extends ContentInfo

func _init() -> void:
	_init_settings_menu()
	_init_user_settings()
	_init_spooky_dialogue()
	
func _init_settings_menu() -> void:
	var script: GDScript = preload("GraphicsPanel.gd")
	script.take_over_path("res://menus/settings/GraphicsPanel.gd")

func _init_user_settings() -> void:
	var script: GDScript = preload("UserSettings.gd")
	script.take_over_path("res://global/UserSettings.gd")
	
func _init_spooky_dialogue() -> void:
	var script: GDScript = preload("SpookyDialogue.gd")
	script.take_over_path("res://menus/spooky_dialog/SpookyDialog.gd")
