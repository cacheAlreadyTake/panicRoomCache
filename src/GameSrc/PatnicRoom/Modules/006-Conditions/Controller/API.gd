extends Node
# BOOKMARK[epic=Modules] 008_Conditions                                              

# ----- INITIALICER -------------------------------------------------------------- ##



func _init() :
	self.name       = "API_001_Conditions"
	#_conditionName  = SYNTAX.EFFECT().EVENT.CONDITION.keys()
	#_conditionIndex = SYNTAX.EFFECT().EVENT.CONDITION



# ----- GETTER -------------------------------------------------------------- ##

# VAR ent: Entity to COnnect it to               
# VAR condName: Name of Class in String          
# VAR duration: in Movements                     
# VAR intensity: very Classdependent,default = 0 
func attachConditionToEnt(ent, condName:String, duration:int, var level:int=0): _006_Condition_Attacher.run(ent,condName,duration,level)




func saniticeEffectParameter(parameter:Array) -> Array : return _006_Conditions_Validator.saniticeParameter(parameter)





# VAR conditionName: Name of Class in String 
func getConditionByName(condName:String):
	if SYNTAX.EFFECT.HAS_EVENT_CONDITION(condName): return SYNTAX.EFFECT().EVENT.CONDITION[condName]
	
	
