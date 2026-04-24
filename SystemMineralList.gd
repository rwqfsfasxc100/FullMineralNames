extends "res://hud/SystemMineralList.gd"

func _ready():
	mineralLabel = ResourceLoader.load("res://hud/components/MineralLabel.tscn","",true)
