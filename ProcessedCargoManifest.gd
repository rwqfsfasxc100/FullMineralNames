extends "res://hud/trtl/ProcessedCargoManifest.gd"

var mineral_renamer_obj

func _ready():
	mineral_renamer_obj = load("res://FullMineralNames/ShipInterrupt.gd").new()
	mineral_renamer_obj.ship = ship
	ship = mineral_renamer_obj

