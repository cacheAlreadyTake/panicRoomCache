extends Object
class_name _BrowserManager_PrettyPrint


static func getPrettyPrint(ent) -> String:
	var prettyString = "\n\n"
	
	prettyString += printMeta(ent.dictOfComps)
	prettyString += "\n\n"
	
	prettyString += printMain(ent.dictOfComps)
	prettyString += "\n\n"
	
	prettyString += printReference(ent.dictOfComps)
	prettyString += "\n\n"	
	return prettyString



static func printMeta(dictOfComps:Dictionary) -> String:
	var toReturn = "META \n"
	for metaComp in ["C_71_LEC_META_BY","C_72_LEC_META_USE","C_12_ATLAS_INDEX"]:
		toReturn += printPair(dictOfComps[metaComp],20)
	return toReturn


static func printMain(dictOfComps:Dictionary) -> String:
	var toReturn = "MAIN \n"
	for comp in dictOfComps.values():
		if !["C_71_LEC_META_BY","C_72_LEC_META_USE","C_12_ATLAS_INDEX"].has(comp.name):
			if comp.name == "C_49_EVENT_REFERENCE": 
				toReturn += "  "+comp.getAutoDoc()["nameToShow"]
				for i in 20-comp.getAutoDoc()["nameToShow"].length(): toReturn += " "
				toReturn += "->    >>> ENTER HERE FOR EVENT >>>\n"
			else:toReturn += printPair(comp,20)
	return toReturn



static func printReference(dictOfComps:Dictionary) -> String:
	return "REFERENCES \n  "






static func printPair(comp,indent):
	var toReturn = "  "
	var name     = comp.getAutoDoc()["nameToShow"]
	
	toReturn += name
	for i in indent-name.length(): toReturn += " "
	toReturn += "->    " + str(comp.value)+"\n"
	
	return toReturn



