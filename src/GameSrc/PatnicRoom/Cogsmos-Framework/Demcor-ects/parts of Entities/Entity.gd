extends Node
# CLASS One Of the most important Classes in our Game.                            
# CLASS They are Compositions of multiple Components and Templates.               
# CLASS There are more specific Entities which uses its Dictionary and functions. 
class_name Entity

# ----- INITIALICE ----------------------------------------------------------- ##

# VAR Key: nameOfTemplate                                                                    
var dictOfTemplates: Dictionary = {}

# VAR Key: list entry number of its name in PatnicRoom/config/knownComponents.json           
var dictOfComps: Dictionary = {}

var arrOfFlags: Array = []
var arrOfProperty:Array = []
var dictOfConds: Dictionary = {}

var nameForDebug

func _init() : DemokrECTS.addEntity(self)


# ----- GETTER --------------------------------------------------------------- ##


# FUNC !NOTE! does not return primitve Datatype, use this: getCompValue()                    
# FUNC return value-type may vary                                                            
func getComp(componentName:String):	return self.dictOfComps[componentName]


# FUNC !NOTE! does not return primitve Datatype, use for this: getCompTempValue()            
func getCompTemp(templateName:String, componentname:String):  
	return dictOfTemplates[templateName].dictOfComps[componentname]



# FUNC return type may vary                                                                  
func getCompValue(componentName:String) : return self.dictOfComps[componentName].value


# FUNC return type may vary                                                                  
func getCompTempValue(templateName:String, componentname:String):
	return getCompTemp(templateName,componentname).value



# ----- SETTER --------------------------------------------------------------- ##


# FUNC !NOTE! Parameter has to be instance of COMP.ATLAS_INDEX_COMP 
func addComponent(component) -> void:
	component.owner = self
	dictOfComps[component.name] = component


func removeComponent(componentName:String) -> void:
	if has( componentName ):  
		dictOfComps.erase(componentName)	


func addTemplate(templateName:String, ent:Entity) -> void:
	dictOfTemplates[templateName] = ent

func addFlag(flagNr) -> void:
	arrOfFlags.append(flagNr)
func addProperty(nr:int):arrOfProperty.append(nr)
func removeProperty(nr:int):arrOfProperty.erase(nr)
func removeFlag(nr):arrOfFlags.erase(nr)
func hasProperty(nr): return arrOfProperty.has(nr)

# ----- VALDATOR ------------------------------------------------------------- ##


func hasCond(condName:String)      -> bool:   return self.dictOfConds.has(condName)
func has(componentName:String)     -> bool:   return self.dictOfComps.has(componentName)
func hasFlag(componentName) -> bool:   
	if componentName is String : return self.arrOfFlags.has(componentName)
	if componentName is int    : return self.arrOfFlags.has(componentName)
	return false

