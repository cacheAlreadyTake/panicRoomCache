extends Object
class_name _14_Bootstrapper



static func getGoalsToInitialice() -> Array:
	return [
		_14_Goals_Fight
		
		
	]



static func initialiceBehaviourModules():
	for goal in getGoalsToInitialice():
		var cache = goal.new()
		cache.initialice()
		API_014_Behavior.getModuleAtlas()[cache.enumNr] = cache 


