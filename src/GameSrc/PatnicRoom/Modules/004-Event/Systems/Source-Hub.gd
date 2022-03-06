extends Object
class_name _004_Seize_Source



static func getByHub() -> Array :
	var sources = []
	var selection = API_008_KitSet.selection
	
	match selection.event.getSource():
		"SELF"     :   sources = [SYNTAX.EVENT.CONCEPT.SEIZE.SOURCE.SELF.run()]
		
		
		_:printerr("at EVENT_PARSE, SOURCE :"+API_008_KitSet.selection.event.getSource()+" NOT FOUND")
	
	
	return sources




