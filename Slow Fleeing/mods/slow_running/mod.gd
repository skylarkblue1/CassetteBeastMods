extends ContentInfo

func _init() -> void:
	_init_mod()

func _init_mod() -> void:
	var script: GDScript = preload("OrderMenu.gd")
	script.take_over_path("res://battle/ui/OrderMenu.gd")
	
