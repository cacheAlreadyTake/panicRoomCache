
# CLASS                                                                              
# DOCS                                                                               
# CLASS                                                                              
extends Object
class_name DemocrECTS_EntityManager



# ----- CONSTRUCTORS ----------------------------------------------------------- ##


#>>> Dictionary --> Entity <<<#

static func constructNewEntity(metaData:Dictionary, toParse:Dictionary) -> Entity:
	var entity         = metaData["class"].new()
	var mandatoryComps = metaData["mandatoryComps"]
	

	if !_hasMandatoryComponents(toParse.keys(),mandatoryComps): return null
	
	
	for entry in toParse.keys():

		if   DemokrECTS.isFlag(entry)     : entity.addFlag(entry)
		elif DemokrECTS.isProperty(entry) : entity.addProperty(DemokrECTS.getPropertyEnumNr(entry))
		 
		elif DemokrECTS.isComponent(entry):
			var compClass    = DemokrECTS.getComponentClass(entry)
			var compInstance = compClass.new( toParse[entry] )
			entity.addComponent(compInstance)
		
	
	return entity as Entity


#>>> Entity --> metaData["class"] <<<#

static func convertEntity(metaData:Dictionary, toParse:Entity) -> Entity:
	var specificEntity = metaData["class"].new()
	var mandatoryComps = metaData["mandatoryComps"]
	

	if !_hasMandatoryComponents( getFlagsAndCompsOfEnt(toParse), mandatoryComps ): return null
	

	for entry in toParse.dictOfComps.values():   specificEntity.addComponent(entry)
	for entry in toParse.dictOfTemplates:        specificEntity.addTemplate(entry)
	for entry in toParse.arrOfFlags:             specificEntity.addFlag(entry)
	for entry in toParse.arrOfProperty:          specificEntity.addProperty(entry)
	

	return specificEntity



# ----- HELPERS ---------------------------------------------------------------- ##


static func _hasMandatoryComponents(toCheck:Array, mandatoryComponents:Array) -> bool:
	for compToString in mandatoryComponents: 
		if !toCheck.has(compToString): 
			printerr("not all mandatory Components in Dictionary for Parsing to Entity! Missing: "+compToString)
			return false
	return true



static func getFlagsAndCompsOfEnt(ent:Entity) -> Array:
	var mergedFlagsAndComps  = []
	mergedFlagsAndComps     += ent.dictOfComps.keys()
	mergedFlagsAndComps     += ent.arrOfFlags
	return mergedFlagsAndComps


