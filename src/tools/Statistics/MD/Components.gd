extends Node
class_name Statistics_components_MD



static func calc():
	var file     = File.new()
	var mdWriter = MarkdownWriter.new()
	
	var allCompsClass          = DemokrECTS.getAllComponents().values()
	var allCompsString         = DemokrECTS.getAllComponents().keys()

	mdWriter.add_template_title("Components")
   

	var arrOfTableHeader = formatTableCollumn("name", allCompsClass[0].getAutoDoc().keys() )
	mdWriter.create_table(arrOfTableHeader)

 
	for i in allCompsString.size():
		var currentCompString  = allCompsString[i]
		var currentCompClass   = allCompsClass[i]
		var currentComp_005_Character_Stats   = currentCompClass.getAutoDoc()
		if currentComp_005_Character_Stats.has("configKey"):currentComp_005_Character_Stats.erase("configKey")
		var rowContent = formatTableCollumn(currentCompString, currentComp_005_Character_Stats.values() )

		mdWriter.add_row_table(rowContent)
		
	
		
	
	mdWriter.writeData("res://mkDocs/Atlas/docs/Atlas_Components.md")






static func formatTableCollumn(newCollumn:String,otherCollumns:Array):
	var formatedRow = []
	formatedRow.append(newCollumn)
	formatedRow += otherCollumns

	return formatedRow





