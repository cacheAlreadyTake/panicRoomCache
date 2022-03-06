extends Node
class_name Statistics_Tiles_MD


static func calc():
	
	var atlas       = API_001_Atlas.TileAtlas()


	for tile in atlas.size():
		var mdWriter    = MarkdownWriter.new()
		var currentTileName = atlas.keys()[tile]	
		var currentTile     = atlas.values()[tile]
		mdWriter.add_template_title(currentTileName)
		
		
		mdWriter.add_header("Compnents: ")
		mdWriter.create_table(["Component","Value"])
		var compsOfTile     = currentTile.dictOfComps
		for currentComponent in compsOfTile.values():
			var componentName = currentComponent.name_quack()
			var value = currentComponent.value
			mdWriter.add_row_table([componentName,value])
		
		
		mdWriter.add_header("Flags: ")
		for currentFlag in currentTile.arrOfFlags:
			mdWriter.add_content_new_line("* "+currentFlag)
		
		
		mdWriter.add_header("Properties: ")
		for currentFlag in currentTile.arrOfProperty:
			mdWriter.add_content_new_line("* "+PROPERTIES.OF.keys()[currentFlag])
		
		
		
		mdWriter.writeData("res://mkDocs/Atlas/docs/SubAtlas/Tiles/"+currentTileName+".md")


