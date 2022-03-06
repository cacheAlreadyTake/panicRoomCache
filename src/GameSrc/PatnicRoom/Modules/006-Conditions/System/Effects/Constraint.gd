extends Node
class_name _006_EFFECTS_CONSTRAINT




static func run(cond:ConditionEntity,effectData:Dictionary) -> void :
	
	if effectData["TYPE"] == "MOVEMENT" : 
		if    cond.duration == 1: 
			cond.affectedEnt.removeFlag("F_19_ACTOR_CAN_NOT_MOVE")
		elif !cond.affectedEnt.hasFlag("F_19_ACTOR_CAN_NOT_MOVE"): 
			cond.affectedEnt.addFlag("F_19_ACTOR_CAN_NOT_MOVE")




static func validateDict(parameter:Array) -> bool : return _006_Conditions_Validator.validate(parameter,getDoc()["VALID"])

static func getDoc() -> Dictionary :   return {
	"KEYWORD"           :   "CONSTRAINT",
	"PARAMETER_COUNT"   :   1,
	"DESCRIPTION"       :   "Disables the use of Added Parameter",
	"VALID"         :   ["MOVEMENT","KIT_USE","ITEM_USE"]
}

static func getArrToDict(parameter:Array) -> Dictionary :
	return {    "TYPE"  :  parameter[0] ,  
				"NAME"  : "CONSTRAINT"   }

