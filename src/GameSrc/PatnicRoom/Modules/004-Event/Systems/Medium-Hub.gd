extends Object
class_name _004_Seize_Medium



static func getByHub() -> Array :
	var positions = []
	
	match API_008_KitSet.selection.medium:
		"AREA"       :   positions = _004_Seize_MediumArea.run()
		"LINEA"      :   positions = _004_Seize_MediumLinea.run()
		"SELECT"     :   positions = _004_Seize_MediumSelect.run()
		"SELF"       :   positions = _004_Seize_MediumSelf.run()
		
		_:printerr("ERROR!! at EVENT_PARSE, MEDIUM : "+API_008_KitSet.selection.medium+" NOT FOUND")
	
	return positions
	
	











