extends Node
class_name Statistics_Components_JSON






static func calc():
	var file:File
	file = File.new()
	var arrOfAutoDocs   = []

	var allCompsClass   = DemokrECTS.getAllComponents().values()	
	var allCompsString  = DemokrECTS.getAllComponents().keys()
	
	for comp in allCompsClass:
		var autoDoc: Dictionary = comp.getAutoDoc()
		autoDoc["componentName"] = comp.name_quack()     
		arrOfAutoDocs.append(autoDoc)

	var compDocToJson = JSON.print(arrOfAutoDocs,"\t")



	saveFile("res://GameData/Alecandria/components.json", compDocToJson, file)
	
	
	
	#saveFile("res://GameData/Alecandria/ListReferences.json",JSON.print(COMP.ATLAS_FLAGS.keys(),"\t"),file)




static func saveFile(filepath,compDocToJson,fileHandler):
	fileHandler.open(filepath,File.WRITE)
	fileHandler.store_line(compDocToJson)
	fileHandler.close()


 

	
