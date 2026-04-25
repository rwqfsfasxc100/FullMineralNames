extends "res://hud/MineralMark.gd"

var marker_rename_mineral_obj

func _ready():
	marker_rename_mineral_obj = preload("res://FullMineralNames/MineralMarkerInterrupt.gd").new()

func scanParent(parent):
	marker_rename_mineral_obj.__set_target(parent)
	if not "__shadowed_object_ref_4134528785__" in parent:
		parent = marker_rename_mineral_obj
	return .scanParent(parent)

func identifyMinerals():
#	var ominerals = minerals
#	var nm = {}
#	for i in minerals:
#		var minname = i.split("MINERALNAME_")[1]
#		nm[minname] = minerals[i]
#	minerals = nm
	if "__shadowed_object_ref_4134528785__" in item:
		item = item.__shadowed_object_ref_4134528785__
	.identifyMinerals()
#	minerals = ominerals
