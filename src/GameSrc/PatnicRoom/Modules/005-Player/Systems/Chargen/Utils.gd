extends Node
class_name _011_Utils



static func generateCharPreset() -> void:
	var dictOfCharGenerall = Util.JSONParser.fileToDictionary(ENUM.FILE_PATHS.SAVE_STATE+"/one/generall and stats.json")
	var dictOfCharInventory = Util.JSONParser.fileToDictionary(ENUM.FILE_PATHS.SAVE_STATE+"/one/Inventory.json")
	
	dictOfCharGenerall["Gear"] = dictOfCharInventory["Gear"]
	dictOfCharGenerall["Kits"] = dictOfCharInventory["Kits"]
	
	dictOfCharGenerall.erase("//C1")
	dictOfCharGenerall.erase("//C2")
	dictOfCharGenerall.erase("//C3")
	
	API_005_Player.chargenSelecttion = dictOfCharGenerall

