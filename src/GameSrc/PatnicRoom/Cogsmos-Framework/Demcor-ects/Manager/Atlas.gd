extends Object
class_name DemokrECTS_Atlas

# BOOKMARK

var atlas_Entry  = {}
var entryComponentRef = {}
var classOfEntries
var indexComponent : String

 

# ----- GETTER --------------------------------------------------------------- ##


func has(ent) -> bool : return atlas_Entry.has(ent)


func getTileByTextureID(textureID:String):
	if self.has(textureID) : return atlas_Entry[textureID]
	else                   : null


func getEntitiesWithCompValue(searchedTerm,componentClass):
	var returnArr = []
	
	for entry in getEntitiesWithComp(componentClass):
		if entry.getCompValue(componentClass) == searchedTerm:   
			returnArr.append(entry) 
	
	return returnArr


func getEntitiesWithComp(componentClass):
	var returnArr = []
	
	for entry in entryComponentRef:   
		if entry.has(componentClass):    
			returnArr.append() 
	
	return returnArr



# ----- SETTER --------------------------------------------------------------- ##


func addEntity(ent):
	if ent is classOfEntries:
		if !has(ent):
			
			var index 
			if ent.has("C_12_ATLAS_INDEX")  : index = ent.getCompValue("C_12_ATLAS_INDEX")
			elif ent.has("C_2_TEXTURE_ID") : index = ent.getCompValue("C_2_TEXTURE_ID")
			
			atlas_Entry[index]       = ent
			entryComponentRef[index] = ent.dictOfComps.keys()
			ent.nameForDebug         = ent.getCompValue("C_6_NAME")
		
		else: printerr("Error in Atlas_TileEntity! ["+str(ent.name())+"] already exists")
	else: printerr("Error in Atlas_TileEntity! ["+(ent.name())+"] could not be added")








