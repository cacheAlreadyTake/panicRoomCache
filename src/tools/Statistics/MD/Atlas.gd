extends Node
class_name Statistics_atlas_MD



static func calc(atlasPara,typePara,filepath):
	var mdWriter = MarkdownWriter.new()
	mdWriter.add_template_title("Atlas "+typePara)


	for entry in atlasPara.values():
		createTitleForEntry(entry,mdWriter)
		createTableForEntry(entry,mdWriter)


	mdWriter.writeData(filepath)




static func createTitleForEntry(entry,mdWriter):
	var entryTitle 
	if entry is TileEntity or entry is InteractEntity: entryTitle=entry.textureID()
	else: entryTitle= entry.getCompValue("C_12_ATLAS_INDEX")
	mdWriter.add_header(entryTitle,3)




static func createTableForEntry(entry,mdWriter):
	mdWriter.create_table(["Statname","Value"])
	for stat in entry.dictOfComps.values():

		var statName  = stat.name_quack()
		var statvalue = stat.value

		mdWriter.add_row_table([statName,statvalue])














