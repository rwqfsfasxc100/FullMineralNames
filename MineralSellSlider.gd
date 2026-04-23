extends "res://enceladus/MineralSellSlider.gd"

func updatePrices():
	.updatePrices()
	mineralLabel.text = "MINERALNAME_" + mineral
