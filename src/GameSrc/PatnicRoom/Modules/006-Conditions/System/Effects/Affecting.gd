extends Node
class_name _006_EFFECTS_AFFECTING




static func run(cond:ConditionEntity,effectData:Dictionary) -> void :
	
	if cond.affectedEnt.has(effectData["COMPONENT"]):
		var comp = cond.affectedEnt.getComponent(effectData["COMPONENT"])
		
		if effectData["MODE"] == "MOD" : comp.value += effectData["VALUE"]
		else                           : comp.value  = effectData["VALUE"]





static func validateDict(parameter:Array) -> bool :   return _006_Conditions_Validator.validate(parameter,getDoc()["VALID"])

static func getDoc() -> Dictionary :   return {
	"KEYWORD"           :   "AFFECTING",
	"DESCRIPTION"       :   "Manipulates the value of a Component by the Value",
	"VALID"             : [   "COMPONENT" , "VALUE_CHANGE_MODE" , "INTEGER"   ]
}

static func getArrToDict(parameter:Array) -> Dictionary :
	return {   "COMPONENT" :     parameter[0]    ,
			   "MODE"      :     parameter[1]    ,
			   "NAME"      :     "AFFECTING"     ,
			   "VALUE"     : int(parameter[2])   }



