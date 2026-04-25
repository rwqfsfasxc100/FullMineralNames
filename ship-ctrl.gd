extends "res://ships/ship-ctrl.gd"

func addIdentifiedObject(object: RigidBody2D, mineral: Dictionary, value: float):
	if Tool.claim(object):
		var newMineral = {}
		for m in mineral:
			if m.begins_with("MINERALNAME_"):
				var nm = m.split("MINERALNAME_")[1]
				newMineral[nm] = mineral[m]
			else:
				newMineral[m] = mineral[m]
		Tool.release(object)
		return .addIdentifiedObject(object,newMineral,value)



#func isValidMineralTarget(object, config: Dictionary) -> bool:
#
#	return .isValidMineralTarget(object,config)
