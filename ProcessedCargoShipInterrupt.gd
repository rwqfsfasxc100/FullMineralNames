extends Node

var ship

func getProcessedCargoTypes(how):
	var out = ship.getProcessedCargoTypes(how)
	var s = out.size()
	for i in range(s):
		var current = out[i]
		out[i] = "MINERALNAME_" + current
	return out


func getProcessedCargo(which,how):
	which = which.split("MINERALNAME_")[1]
	var out = ship.getProcessedCargo(which,how)
	return out


func getProcessedCargoCapacity(how):
	how = how.split("MINERALNAME_")[1]
	var out = ship.getProcessedCargoCapacity(how)
	return out

func soundAlert():
	ship.soundAlert()

