extends Node
class_name _006_EFFECTS_SPREADING




static func run(cond:ConditionEntity,effectData:Dictionary) -> void :
	var tilemap   = SokraTiles.getTilemapLayer(cond.affectedEnt.layer())
	var sourcePos = cond.affectedEnt.pos()
	
	var condName = cond.name()
	var compare  = effectData["CONDITION"]
	
	
	for distance in int(effectData["REACH"]):
		for dir in ENUM.SOKRATILES.DIRECTION_FOUR.values():
			var currentEnt = tilemap.getEntByPos_quack(API_002_Tilemap.getMovePosByMultiple(sourcePos,dir,distance+1))
			if is_instance_valid(currentEnt):
				var isValid    = false
				
				var toLook
				match compare["REFERENCE"]:
					"PROPERTY" : toLook = currentEnt.arrOfProperty
					"INDEX"    : toLook = [currentEnt.getCompValue("C_12_ATLAS_INDEX")]
					"TYPE"     : toLook = [TileEntity,InteractEntity,ActorEntity]
				
				
				if compare["COMPARATOR"] == "EQUALS" : 
					if toLook.has(PROPERTIES.OF.get(compare["VALUE"])): isValid = true
				
				
				if isValid and !currentEnt.hasCond(condName): 
					if int(effectData["PERCENT"]) > Util.RNG.getRandomNumber(0,100):
						API_006_Condition.attachConditionToEnt(currentEnt,condName,cond.duration,cond.level)






static func validateDict(parameter:Array) -> bool : return _006_Conditions_Validator.validate(parameter,getDoc()["VALID"])

static func getDoc() -> Dictionary :   return {
	"KEYWORD"           :   "SPREADING",
	"DESCRIPTION"       :   "Manipulates the value of a Component by the Value",
	"VALID"             : [  ["COMPARE",["PROPERTY","INDEX","TYPE"]],"PERCENT","REACH"   ]
}

static func getArrToDict(parameter:Array) -> Dictionary :
	return {
		"PERCENT"    :  int(parameter[1]),
		"NAME"      : "SPREADING",
		"REACH"      :  int(parameter[2]),       
		"CONDITION"  : {   "REFERENCE"  :  parameter[0][0] ,
						   "COMPARATOR" :  parameter[0][1] ,
						   "VALUE"      :  parameter[0][2] }
	}




