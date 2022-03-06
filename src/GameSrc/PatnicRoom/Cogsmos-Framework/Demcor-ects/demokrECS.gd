
# CLASS                                                                              
# DOCS  https://mizzitgamestudios.github.io/mkDocs/site/Cogsmos/democrECS/           
# CLASS                                                                              
# BOOKMARK[epic=Cogsmos Framework] DemocrECTS                                        
extends Node


var _entityConverter := _DemocrECTS_EntityConverter.new()

var _cacheOfProperties := PROPERTIES.OF
var _cacheOfComps      := _Comp.getComponents()
var _cacheOfFlags      := _Flags.getFlags().keys()
var _cacheOfTemplate   := _Template.getTemplate()


var atlas_entities = {}   # VAR all Entities in Game 
var failed_parsers = {}



# ----- INITIALICE ----------------------------------------------------------- ##


# FUNC creates a new Entity according to the most relevant flag                          
# VAR needs the lowest common annominating comps of ENUM.MINIMAL_COMP                    
# VAR Returns: [InteractEntity:F1] [TileEntity:F2] [KitPartEntity:F15,F16] [Entity:else] 
func initialiceNewEntry(toParse:Dictionary) -> Entity:  
	return _entityConverter.createEntityByDict(toParse) as Entity


# FUNC instanciates Entity-children according to the most relevant flag                  
# VAR Returns: [InteractEntity:F1] [TileEntity:F2] [KitPartEntity:F15,F16] [Entity:else] 
func convertEntToChild(toParse:Entity) -> Entity:  
	return _entityConverter.convertEntity(toParse) as Entity


func copyEntity(toParse:Entity): 
	return _entityConverter.copyEntity(toParse)



# ----- GETTER --------------------------------------------------------------- ##


#>>> specific Return  <<<# 

func getComponentClass(stringOfComp:String)    :  return _getValueOfKeyInDict(stringOfComp,_cacheOfComps,"Component")
func getTemplateClass(stringOfTemplate:String) :  return _getValueOfKeyInDict(stringOfTemplate,_cacheOfComps,"Template")
func getPropertyEnumNr(stringOfTemplate:String) :  return _getValueOfKeyInDict(stringOfTemplate,_cacheOfProperties,"Property")


#>>> generall Return  <<<# 

func getAllComponents() -> Dictionary : return _cacheOfComps
func getAllFlags()      -> Array      : return _cacheOfFlags
func getAllProperties() -> Array      : return _cacheOfProperties.keys()
func getAllTemplates()  -> Dictionary : return _cacheOfTemplate

# ----- VALIDATOR ------------------------------------------------------------ ##


func isTemplate(stringOfTemplate:String) -> bool : return _cacheOfTemplate.has(stringOfTemplate)
func isProperty(stringOfTemplate:String) -> bool : return _cacheOfProperties.has(stringOfTemplate)
func isComponent(stringOfComp:String)    -> bool : return _cacheOfComps.has(stringOfComp)
func isEffect(stringOfComp:String)       -> bool : return stringOfComp == "C_49_EVENT_REFERENCE"
func isFlag(stringOfFlag:String)         -> bool : return _cacheOfFlags.has(stringOfFlag)

func hasDictTemplate(dict:Dictionary) -> bool:
	for entry in dict.keys(): if isTemplate(entry): return true
	return false



# ----- SETTER --------------------------------------------------------------- ##


# FUNC is called in _init() of Entities 
func addEntity(ent:Entity) -> void: atlas_entities[ent.get_instance_id()] = ent



# ----- HELPERS -------------------------------------------------------------- ##


func _getValueOfKeyInDict(key:String,dict:Dictionary,type:String):
	if dict.has(key) :  return dict.get(key)
	else             :  printerr("DemocrECS cant find "+key+" of type "+type)

