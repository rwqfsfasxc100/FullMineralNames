extends Node

const MOD_PRIORITY = -1
const MOD_NAME = "Full Mineral Names"
const MOD_VERSION_MAJOR = 1
const MOD_VERSION_MINOR = 1
const MOD_VERSION_BUGFIX = 2
const MOD_VERSION_METADATA = ""
var modPath:String = get_script().resource_path.get_base_dir() + "/"
var _savedObjects := []
func _init(modLoader = ModLoader):
	l("Initializing")
	installScriptExtension("ship-ctrl.gd")
	installScriptExtension("hud/CargoScanner.gd")
	installScriptExtension("MineralMark.gd")
	installScriptExtension("hud/ProcessedCargoManifest.gd")
	installScriptExtension("CurrentGame.gd")
	installScriptExtension("MineralLabel.gd")
	installScriptExtension("MineralSellSlider.gd")
	replaceScene("hud/components/MineralLabel.tscn")
	installScriptExtension("SystemMineralList.gd")
#	replaceScene("hud/OMS.tscn")

func l(msg:String, title:String = MOD_NAME, version:String = str(MOD_VERSION_MAJOR) + "." + str(MOD_VERSION_MINOR) + "." + str(MOD_VERSION_BUGFIX)):
	if not MOD_VERSION_METADATA == "":
		version = version + "-" + MOD_VERSION_METADATA
	Debug.l("[%s V%s]: %s" % [title, version, msg])
func installScriptExtension(path:String):
	var childPath:String = str(modPath + path)
	var childScript:Script = load(childPath)
	childScript.new()
	var parentScript:Script = childScript.get_base_script()
	var parentPath:String = parentScript.resource_path
	l("Installing script extension: %s <- %s" % [parentPath, childPath])
	childScript.take_over_path(parentPath)
func replaceScene(newPath:String, oldPath:String = ""):
	l("Updating scene: %s" % newPath)

	if oldPath.empty():
		oldPath = str("res://" + newPath)

	newPath = str(modPath + newPath)

	var scene := load(newPath)
	scene.take_over_path(oldPath)
	_savedObjects.append(scene)
	l("Finished updating: %s" % oldPath)
