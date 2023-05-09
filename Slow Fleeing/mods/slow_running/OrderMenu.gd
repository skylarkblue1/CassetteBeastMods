extends "res://battle/ui/OrderMenu.gd"

func flee() -> void:
	
	yield (battle.cassette_player.hide(), "completed")
	
	if yield (MenuHelper.confirm("Want to flee?", 1, 1), "completed"):
		if battle.is_net_game:
			yield (battle.cassette_player.defocus(), "completed")
			if yield (MenuHelper.confirm("BATTLE_FLEE_ONLINE_CONFIRM", 1, 1), "completed"):
				choose_order(BattleOrder.new(fighter, BattleOrder.OrderType.FLEE))
			else :
				_on_Submenu_canceled()
			return 
		
		var success = fighter.get_controller().try_flee()
		if not success:
			if SaveState.has_ability("fast_travel"):
				if yield (MenuHelper.confirm("BATTLE_FLEE_FAILED_FAST_TRAVEL", 1, 1), "completed"):
					success = true
					battle.fast_travel_flee = true
			else :
				yield (battle.show_message("BATTLE_FLEE_FAILED", true), "completed")
		if success:
			choose_order(BattleOrder.new(fighter, BattleOrder.OrderType.FLEE))
		else :
			choose_order(null)
	else: 
		yield (battle.cassette_player.show(), "completed")
