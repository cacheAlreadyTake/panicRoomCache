extends _14_Means_Module
class_name _14_Means_SelectKit



func _init() :
	weight = 10
	enumNr = ENUM.BEHAVIOUR.MEANS.SELECT_KIT
	name   = "MEANS___SELECT_KIT"
	
	
	associatedActions = [
		 _14_Means_SelectKitByCat
		,_14_Means_SelectKitByName
		,_14_Means_SelectKitBySlotNr
		,_14_Means_SelectKitByRNG
		,_14_Means_SelectKitInRange
	]






func run()                   -> void       :  pass


