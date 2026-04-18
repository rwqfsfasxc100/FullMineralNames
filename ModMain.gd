extends Node

const MOD_PRIORITY = 0
const MOD_NAME = "Full Mineral Names"
const MOD_VERSION_MAJOR = 1
const MOD_VERSION_MINOR = 0
const MOD_VERSION_BUGFIX = 0
const MOD_VERSION_METADATA = ""
func _init(modLoader = ModLoader):
	l("Initializing")
func l(msg:String, title:String = MOD_NAME, version:String = str(MOD_VERSION_MAJOR) + "." + str(MOD_VERSION_MINOR) + "." + str(MOD_VERSION_BUGFIX)):
	if not MOD_VERSION_METADATA == "":
		version = version + "-" + MOD_VERSION_METADATA
	Debug.l("[%s V%s]: %s" % [title, version, msg])
