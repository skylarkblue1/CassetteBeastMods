extends ContentInfo

func _init() -> void:
	var script: GDScript = preload("SpookyDialog.gd")
	script.take_over_path("res://menus/spooky_dialog/SpookyDialog.gd")
