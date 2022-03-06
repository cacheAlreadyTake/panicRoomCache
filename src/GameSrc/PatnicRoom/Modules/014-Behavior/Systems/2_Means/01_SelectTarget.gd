extends _14_Means_Module
class_name _14_Means_SelectTarget



func _init() :
	weight = 10
	enumNr = ENUM.BEHAVIOUR.MEANS.SELECT_TARGET
	name   = "MEANS___SELECT_TARGET"
	
	
	associatedActions = [
		 _14_Means_SelectActor
		,_14_Means_SelectTile
	]






func run()                   -> void       :  pass


