extends "res://hud/CargoScanner.gd"

var ignoreForMineralRenaming = ["","cargo_space","_","SHIP","CARGO_EQUIPMENT","CARGO_UNKNOWN_ALBEDO","CARGO_UNKNOWN","CARGO_UNMARKED"]

func count(p,type):
	if not type in ignoreForMineralRenaming and not type.begins_with("MINERALNAME_"):
		type = "MINERALNAME_" + type
	return .count(p, type)
