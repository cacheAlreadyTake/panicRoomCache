extends Node
class_name Statistics_MD_Kitparts



static func calc():
	var allKitparts = API_001_Atlas.KitParts().allBasekitGroups
	var mdWriter    = MarkdownWriter.new()
	
	
	for group in allKitparts.values():
		for entry in group.values():
			mdWriter._stringOfMd = ""
			
			mdWriter.add_header("**"+entry.baseKit.name()+"**",2)
			baseKitToDok(entry.baseKit,mdWriter)
			
			drawBaseEvent(mdWriter,entry.baseKit.event().main())
			mdWriter.add_content_new_line("\n---")
			
			mdWriter.add_header(" ",6)
			mdWriter.add_header("**Mods**",2)
			mdWriter.add_content_new_line("("+str(entry.modArr.size())+" found)")
			
			for mod in entry.modArr.values():
				mdWriter.add_header(mod.name(),3)
				baseKitToDok(mod,mdWriter)
			
			
			mdWriter.writeData("res://mkDocs/Atlas/docs/SubAtlas/BaseKitParts/"+entry.baseKit.index()+".md")





static func baseKitToDok(kitpart:KitPartEntity,mdWriter):
	var event = kitpart.event().main()
	mdWriter.create_table(["Stat","Value"])
	mdWriter.add_row_table(["description", 		kitpart.decription()        ])
	mdWriter.add_row_table(["mechanicalSummary", 	kitpart.mechanicalSummary() ])
	mdWriter.add_row_table(["cooldownTime", 		str(kitpart.cooldownTime()) ])
	mdWriter.add_row_table(["rarity", 			str(kitpart.rarity())       ])
	mdWriter.add_row_table(["modTime", 			str(kitpart.modTime())      ])
	mdWriter.add_row_table([" "," "])


static func drawBaseEvent(mdWriter:MarkdownWriter,event):
	mdWriter.add_row_table(["**SEIZE**"," "])
	mdWriter.add_row_table(["Medium",event["SELECT"]["SEIZE"][0][1]])
	mdWriter.add_row_table(["Source",event["SELECT"]["SEIZE"][1][1]])
	mdWriter.add_row_table(["Reach",event["SELECT"]["SEIZE"][2][1]])
	
	mdWriter.add_row_table(["**CONSIDER**"," "])
	for step in event["SELECT"]["CONSIDER"]:
		var cache = step as PoolStringArray
		mdWriter.add_row_table([" ",cache.join("  ")])
	
	mdWriter.add_row_table(["**PERFORM**"," "])
	for step in event["RUN"]["PERFORM"]:
		var cache = step as PoolStringArray
		mdWriter.add_row_table([" ",cache.join("  ")])





