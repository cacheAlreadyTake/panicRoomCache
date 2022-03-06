extends _14_Goals_Module
class_name _14_Goals_Fight



func _init() :
	name   = "GOAL___FIGHT" 
	enumNr = ENUM.BEHAVIOUR.GOALS.FIGHT
	
	validMeans = [
		 _14_Means_SelectTarget
		,_14_Means_SelectKit
	]


