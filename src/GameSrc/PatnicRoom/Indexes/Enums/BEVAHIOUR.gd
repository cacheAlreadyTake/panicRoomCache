extends Object
class_name _Enum_Behaviour

var ENUMS_TO_STRING = {
	 "GOALS"        : GOALS
	,"MEANS"        : MEANS
	,"ACTIONS"      : ACTIONS
}



# IFS : 0
# 1. IFS : Behaviour-depth ( GOAL , MEAN , ACTION )
# 2. IFS : Unique Identifyer 
# 3. IFS : Grouping of Actions in Means (Optional)


enum GOALS{
	FIGHT         = 101
	IDLE          = 102
}


enum MEANS{
	SELECT_TARGET = 20101
	SELECT_KIT    = 20202

}


enum ACTIONS{
	
# SELECT_TARGET ( 20101 )
	SELECT_TILE   = 30101
	SELECT_ACTOR  = 30201
	SELECT_SELF   = 30301

# SELECT_KITSET ( 20202 )
	SELECT_KIT_BY_CAT     = 30402
	SELECT_KIT_BY_NAME    = 30502
	SELECT_KIT_BY_SLOT_NR = 30602
	SELECT_KIT_BY_RNG     = 30702
	SELECT_KIT_IN_REACH   = 30802




}






