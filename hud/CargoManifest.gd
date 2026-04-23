extends "res://hud/CargoManifest.gd"

var baseColors

func _ready():
	if scannerNode:
		for m in scannerNode.colorOverrides:
			colors["MINERALNAME_" + m] = scannerNode.colorOverrides[m]
		
