extends "res://CurrentGame.gd"

func _ready():
	var colors = CurrentGame.specificMineralColors.duplicate(true)
	for i in colors:
		var n = "MINERALNAME_" + i
		if not n in CurrentGame.specificMineralColors:
			CurrentGame.specificMineralColors.merge({n:CurrentGame.specificMineralColors[i]})

func getMarketPrice(of):
	if "__shadowed_object_ref_4134528785__" in of:
		of = of.__shadowed_object_ref_4134528785__
	return .getMarketPrice(of)
