extends SokraTiles_Chunk_Animation
class_name Sokratiles_Chunk_Condition


# ----- INITIALICE ----------------------------------------------------------- ##

var layerEntriesOnMap = []

func _ready():
	.initialice(ENUM.SOKRATILES.LAYER.CONDITION)
	Signals.connect("Actor_Turn_Finished",self,"updateMap")



# ----- FUF --------------------------------------------------------------------- ##



func addLayerEntry(ent,condClassName,textureID:String):
	layerEntriesOnMap.append( LayerEntry.new(ent,condClassName,textureID) )
	_drawCell(textureID,ent.pos())


func removeLayerEntry(ent):
	if layerEntriesOnMap.has(ent):
		var nr = layerEntriesOnMap.find(ent)
		layerEntriesOnMap.remove(nr)



# ----- SIGNAL_CALLS ------------------------------------------------------------ ##


func updateMap():
	if !layerEntriesOnMap.empty():
		self.clear()
		for currentEntry in layerEntriesOnMap:
			
			if !is_instance_valid(currentEntry.conditionInstance): 
				layerEntriesOnMap.erase(currentEntry)
			else:_drawCell(currentEntry.textureID,currentEntry.affectedEnt.pos())


func isNullReference(currentLayerEntry:LayerEntry):   return !is_instance_valid(currentLayerEntry.conditionInstance) or !is_instance_valid(currentLayerEntry.affectedEnt)

func removeDueEntries(toRemove:Array):                for currentToRemove in toRemove:  layerEntriesOnMap.remove(currentToRemove)


# ----- HELPERS ----------------------------------------------------------------- ##


class LayerEntry:
	var affectedEnt
	var textureID: String
	var oldPosCache
	var conditionInstance

	func _init(affectedEntPara,condClassName,textureIDPara):
		conditionInstance = affectedEntPara.dictOfConds[condClassName]
		affectedEnt = affectedEntPara
		oldPosCache = affectedEnt.pos()
		textureID   = textureIDPara


















