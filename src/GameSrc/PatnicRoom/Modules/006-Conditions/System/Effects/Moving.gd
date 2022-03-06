extends Node
class_name _006_EFFECTS_MOVING




static func run() -> void :
	pass
	







static func getDoc() -> Dictionary :   return {
	"KEYWORD"           :   "MOVING",
	"PARAMETER_COUNT"   :   1,
	"DESCRIPTION"       :   "Moves By one to its Parameter",
	"PARAMETER"         :   ["AGAINST / ALONG / RNG"]
}




static func validateDict(parameter:Array) -> bool : return _006_Conditions_Validator.validate(parameter,getDoc()["VALID"])


static func getArrToDict(parameter:Array) -> Dictionary :
	return {    "TYPE"  :  parameter[0] ,  
				"NAME"  : "CONSTRAINT"   }
