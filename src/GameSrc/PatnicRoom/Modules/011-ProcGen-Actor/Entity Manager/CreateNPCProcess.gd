extends Node
class_name _7_EntMan_Actor


# ----- MAIN ----------------------------------------------------------------- ##

var specialtyTemplate
var raceTemplate
var roleTemplate

# BOOKMARK[epic=Entities_Process] Actor Dictionary -> ActorEntity 
func _convertEnt_quack(dictionary,ent: ActorEntity):
	getMainTemplates(dictionary)
	
	_addBasicDefinitionTemplates(ent)
	_addSynonym(ent)
	
	_addDirectStats(ent)
	
	_addIndirectStats(ent,dictionary)

	return ent


func getMainTemplates(dictionary:Dictionary):
	raceTemplate = API_001_Atlas.RaceAtlas()[dictionary["C_12_FOR_RACE"]]
	roleTemplate = API_001_Atlas.RoleAtlas()[dictionary["C_12_FOR_ROLE"]]
	specialtyTemplate = API_001_Atlas.SpecialtyAtlas()[dictionary["C_12_FOR_SPECIALTY"]]



# ----- BASIC ---------------------------------------------------------------- ##

func _addBasicDefinitionTemplates(ent):
	ent.addTemplate("race",raceTemplate)
	ent.addTemplate("role",roleTemplate)
	ent.addTemplate("specialty",specialtyTemplate)


func _addDirectStats(ent):
	_getAttributeBlock(ent)
	_getSkillBlock(ent)


func _addSynonym(ent):
	var synonymComponent = roleTemplate.getComp(C_47_SYNONYM.name_quack())
	var randomNumber = Util.RNG.getRandomNumber(0,synonymComponent.value.size()-1)
	var synonym = synonymComponent.value[randomNumber]
	
	ent.addComponent(C_47_SYNONYM.new(synonym)) 



# ----- DIRECT STATS --------------------------------------------------------- ##

func _getAttributeBlock(ent):
	var attributesOfRace = ent.getCompTempValue("race","C_19_ATTRIBUTES")
	var attributesOfRole = ent.getCompTempValue("role","C_19_ATTRIBUTES")

	var attributesSum  = Util.DictionaryUtils.use(attributesOfRace,"increment",attributesOfRole)
	ent.addComponent(C_19_ATTRIBUTES.new(attributesSum))


func _getSkillBlock(ent):
	var skillOfSpecialty = ent.getCompTempValue("specialty","C_20_SKILLBLOCK")
	var skillOfRole = ent.getCompTempValue("role","C_20_SKILLBLOCK")

	var skillSum  = Util.DictionaryUtils.use(skillOfSpecialty,"increment",skillOfRole)
	
	var skillcomp = C_20_SKILLBLOCK.new()
	skillcomp.setSkillblock(skillSum)
	ent.addComponent(skillcomp)


# ----- INDIRECT STATS ------------------------------------------------------- ##

func _addIndirectStats(ent,dictionary):
	var comp = C_26_INDIRECT_STATS.new(ent.getComp(C_19_ATTRIBUTES.name_quack()), ent)
	ent.addComponent(C_2_TEXTURE_ID.new("CommonBNPC_0_2"))
	ent.addComponent(C_25_MAX_KITSETS.new())
	ent.addComponent(C_6_NAME.new("CommonBNPC_0_2"))
