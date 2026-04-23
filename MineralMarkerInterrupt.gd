extends Node

var __shadowed_object_ref_4134528785__ = null
func __set_target(oref):
	__shadowed_object_ref_4134528785__ = oref

func getComposition():
	var out = __shadowed_object_ref_4134528785__.getComposition()
	var mn = {}
	for i in out:
		mn["MINERALNAME_" + i] = out[i]
	return mn
func getBaseComposition():
	return __shadowed_object_ref_4134528785__.getComposition()

func has_method(_method_):
	var out = __shadowed_object_ref_4134528785__.has_method(_method_)
	return out

func set_script(script):
	__shadowed_object_ref_4134528785__.set_script(script);
func get_script():
	return __shadowed_object_ref_4134528785__.get_script();

