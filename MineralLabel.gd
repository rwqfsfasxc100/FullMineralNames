extends "res://hud/components/MineralLabel.gd"

var ignoreForMineralRenaming = ["","cargo_space","_","SHIP","CARGO_EQUIPMENT","CARGO_UNKNOWN_ALBEDO","CARGO_UNKNOWN","CARGO_UNMARKED","HUD_MIN_PRICE","HUD_MIN_PRICE"]
func _setMineral(to):
	._setMineral(to)
	if not text in ignoreForMineralRenaming:
		text = "MINERALNAME_" + text
	
