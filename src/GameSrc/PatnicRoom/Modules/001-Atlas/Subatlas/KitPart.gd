extends DemokrECTS_Atlas
class_name _001_Kitparts


# ----- INITIALICE ----------------------------------------------------------- ##

var baseKitParts = {}
var modKitParts = {}
var appendixKitParts = {}

var nameIndexCrossreverence = {}

var cyberware 	= {}
var hack 		= {}
var drone 		= {}
var mTypeMeat	= [cyberware,hack,drone]

var infusion 	= {}
var spell 		= {}
var rite 		= {}
var mTypeMagic	= [infusion,spell,rite]

var meele 		= {}
var gun 		= {}
var armor 		= {}
var mTypeMatrix = [meele,gun,armor]

var allBasekitGroups = {
	 ENUM.KITS.CATEGORY.CYBERWARE	: cyberware 
	,ENUM.KITS.CATEGORY.HACK		: hack
	,ENUM.KITS.CATEGORY.DRONE		: drone
	,ENUM.KITS.CATEGORY.INFUSION 	: infusion
	,ENUM.KITS.CATEGORY.SPELL 		: spell
	,ENUM.KITS.CATEGORY.RITE		: rite
	,ENUM.KITS.CATEGORY.MEELE 		: meele
	,ENUM.KITS.CATEGORY.GUN			: gun
	,ENUM.KITS.CATEGORY.ARMOR		: armor
}

func _init() :
	atlas_Entry    = {}
	classOfEntries = KitPartEntity
	indexComponent = C_12_ATLAS_INDEX.name_quack()



# ----- SETTER --------------------------------------------------------------- ##


func sortEntries():
	for entry in cache.values(): 
		atlas_Entry[entry.index()] = entry
		entryComponentRef[entry.index()] = entry.dictOfComps.keys()
	
	
	for entry in cache.values() : entry.getComp("C_12_ATLAS_INDEX").buildFamiliyComponent()
	
	
	for entry in cache.values():
		
		if entry.hasFlag("F_15_KITPART_TYPE_BASE"):
			
			var kitpartEntry = KitpartEntry.new(entry)
			
			match entry.catType():
				"CYBERWARE" : cyberware [entry.index()] = kitpartEntry
				"HACK"      : hack      [entry.index()] = kitpartEntry
				"DRONE"     : drone     [entry.index()] = kitpartEntry

				"MEELE"     : meele     [entry.index()] = kitpartEntry
				"GUN"       : gun       [entry.index()] = kitpartEntry
				"ARMOR"     : armor     [entry.index()] = kitpartEntry

				"INFUSION"  : infusion  [entry.index()] = kitpartEntry
				"SPELL"     : spell     [entry.index()] = kitpartEntry
				"RITE"      : rite      [entry.index()] = kitpartEntry
	
	#var cachedCache = []
#	for entry in cache.keys():
	#	cache[cache[entry].name()] = cache[entry].event().main()
#		cache.erase(entry)

# ----- GETTER --------------------------------------------------------------- ##


func getDirectByAtlas(nameOfKit:String):                    
	if atlas_Entry.has(nameOfKit): return atlas_Entry[nameOfKit]
	elif ![" ","","null","n/a","nan","empty"].has(nameOfKit.to_lower()): return atlas_Entry[nameIndexCrossreverence[nameOfKit]]




func getBaseKitByKitAndName(kit:int,nameOfBaseKit:String):  return allBasekitGroups[kit][nameOfBaseKit].baseKit


func getKitGroup(string_enum_kitGroup):
	var enumOfString
	if string_enum_kitGroup is String: enumOfString = ENUM.GET_IN_STRING(string_enum_kitGroup,"CATEGORY")
	if string_enum_kitGroup is int:    enumOfString = string_enum_kitGroup
	return allBasekitGroups[enumOfString]



# ----- HELPER --------------------------------------------------------------- ##


class KitpartEntry:
	var baseKit
	var modArr = {}

	func _init(basepara) -> void:
		API_001_Atlas.KitParts().baseKitParts[basepara.family()] = basepara
		baseKit = basepara
		
		for entry in API_001_Atlas._kitparts.cache.values():
			if basepara.index() == entry.getCompValue("C_69_KITSET_FAMILY"):
				
				if entry.getCompValue("C_38_KIT_PART_TYPE") == ENUM.KITS.PARTS.MOD:
					modArr[entry.name()] = entry
					API_001_Atlas.KitParts().modKitParts[entry.family()] = entry.event()
		




var cache = {}
func addEntity(ent):
	if ent is classOfEntries:
		if !has(ent):
		
			cache[ent.getCompValue(indexComponent)] = ent
			nameIndexCrossreverence[ent.getCompValue("C_6_NAME")] = ent.getCompValue("C_12_ATLAS_INDEX")
		
		else: printerr("Error in Atlas_TileEntity! ["+str(ent.name())+"] already exists")
	else: printerr("Error in Atlas_TileEntity! ["+(ent.name())+"] could not be added")


func has(ent):
	for entry in atlas_Entry :   if entry.instance == ent: return true
	else                     :   return false
