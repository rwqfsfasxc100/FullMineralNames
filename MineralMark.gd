extends "res://hud/MineralMark.gd"

var marker_rename_mineral_obj

func _ready():
	marker_rename_mineral_obj = preload("res://FullMineralNames/MineralMarkerInterrupt.gd").new()

func scanParent(parent):
	marker_rename_mineral_obj.__set_target(parent)
	return .scanParent(marker_rename_mineral_obj)
