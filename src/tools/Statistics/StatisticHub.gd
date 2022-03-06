extends Node
class_name Statistics_Hub


# ----- META DATA ------------------------------------------------------------ ##

enum STATISTICS_TYPE { DEFAULT , ATLAS }

var statisticsMeta = {

	STATISTICS_TYPE.DEFAULT : [
		{  "TYPE":"DEFAULT"  ,  "NAME":"components"     ,   "CLASS":Statistics_components_MD               },
		{  "TYPE":"DEFAULT"  ,  "NAME":"kitparts"       ,   "CLASS":Statistics_MD_Kitparts                 },
		{  "TYPE":"DEFAULT"  ,  "NAME":"enum"           ,   "CLASS":Statistics_enum_MD                     },
		{  "TYPE":"DEFAULT"  ,  "NAME":"Tiles"           ,  "CLASS":Statistics_Tiles_MD                    },
	   #{  "TYPE":"DEFAULT"  ,  "NAME":"Syntax Effect"  ,   "CLASS":Statistics_effectsSyntax_MD            }
	],

	STATISTICS_TYPE.ATLAS : [
		{  "TYPE":"ATLAS"    ,  "NAME":"Tile"           ,  "ATLAS_DICT":API_001_Atlas.TileAtlas()          },
		{  "TYPE":"ATLAS"    ,  "NAME":"Interactables"  ,  "ATLAS_DICT":API_001_Atlas.InteractableAtlas()  },
		{  "TYPE":"ATLAS"    ,  "NAME":"Roles"          ,  "ATLAS_DICT":API_001_Atlas.RoleAtlas()          },
		{  "TYPE":"ATLAS"    ,  "NAME":"Races"          ,  "ATLAS_DICT":API_001_Atlas.RaceAtlas()          },
		{  "TYPE":"ATLAS"    ,  "NAME":"Specialties"    ,  "ATLAS_DICT":API_001_Atlas.SpecialtyAtlas()     },
	]



}



# ----- MAIN ----------------------------------------------------------------- ##


func getStatistics():
	print("CALCULATING STATISTICS...")
	print("MARKDOWNS")
	getMDFiles()
	print("JSONS")
	getJSONFiles()
	print("STATISTICS COMPUTED")




func getMDFiles():
	Statistics_Overview.calc(API_001_Atlas.RoleAtlas().keys(),"Roles")
	Statistics_Overview.calc(API_001_Atlas.RaceAtlas().keys(),"Races")
	Statistics_Overview.calc(API_001_Atlas.SpecialtyAtlas().keys(),"Specialties")
	Statistics_Overview.calc(API_001_Atlas.RoleAtlas().keys(),"Roles")
	Statistics_Overview.calc(API_001_Atlas.KitParts().allBasekitGroups,"BaseKitParts")
	Statistics_Overview.calc(API_001_Atlas.TileSetAtlas(),"TileSets")
	
	
	
	for i in statisticsMeta.size():
		var currentEntries = getCurrentEntries(i)
		var statTypeClass  = getTypeClass(i)
		
		for entry in currentEntries:
			var toCompute = statTypeClass.new(entry)
			toCompute.printStatus()
			toCompute.run()



func getJSONFiles():
	print(">  Components Computet")        ;		Statistics_Components_JSON.calc()
	#print(">  Syntax Of Effect Computet")  ;		Statistics_effectsSyntax_JSON.calc()
	#print(">  Kitparts")  ;		Statistics_kitparts_JSON.calc()



# ----- HELPER --------------------------------------------------------------- ##


func getCurrentEntries(itteration): return statisticsMeta.values()[itteration]

func getTypeClass(itteration:int):
	match statisticsMeta.keys()[itteration]:
		STATISTICS_TYPE.DEFAULT : return DefaultStatistic
		STATISTICS_TYPE.ATLAS   : return AtlasStatistics



# ----- _005_Character_Stats CLASSES -------------------------------------------------------- ##


#>>> DEFAULT <<<#
class DefaultStatistic:
	var type:String  ;  var categoryName:String  ;  var calculatorReference

	func printStatus() : print(">  "+categoryName) 
	func run()         : calculatorReference.calc()

	func _init(toCalc:Dictionary) -> void:
		type                = toCalc["TYPE"]
		categoryName        = toCalc["NAME"]
		calculatorReference = toCalc["CLASS"]




#>>> ATLAS <<<#
class AtlasStatistics:
	var type:String           ;  var categoryName:String    ;  var calculatorReference
	var atlasDict:Dictionary  ;  var filepathToSave:String
	
	func printStatus() : print(">  "+categoryName) 
	func run()         : calculatorReference.calc(atlasDict, categoryName, filepathToSave)
	
	func _init(toCalc:Dictionary):
		type                = toCalc["TYPE"]
		categoryName        = toCalc["NAME"]
		calculatorReference = Statistics_atlas_MD
		
		atlasDict           = toCalc["ATLAS_DICT"]
		filepathToSave      = "res://mkDocs/Atlas/docs/SubAtlas/"+categoryName+".md"














