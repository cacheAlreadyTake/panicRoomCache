extends Node
class_name _006_EFFECTS_SYNERGIZE




static func run() -> void :
	pass
	







static func validateDict(parameter:Array) -> bool :   return _006_Conditions_Validator.validate(parameter,getDoc()["VALID"])

static func getDoc() -> Dictionary :   return {
	"KEYWORD"           :   "SYNERGIZE",
	"DESCRIPTION"       :   "Manipulates the value of a Component by the Value",
	"VALID"             : [   "COMPONENT" , "VALUE_CHANGE_MODE" , "INTEGER"   ]
}

static func getArrToDict(parameter:Array) -> Dictionary :
	return {   "COMPONENT" :     parameter[0]    ,
			   "MODE"      :     parameter[1]    ,
			   "NAME"      :     "SYNERGIZE"     ,
			   "VALUE"     : int(parameter[2])   }



