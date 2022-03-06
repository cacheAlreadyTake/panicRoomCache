extends Object
class_name _14_Goals_Module


var name              : String
var enumNr            : int 

var validMeans        : Array
var triggerValues     : Dictionary

var connectedSignals  : Array



func initialice() -> void: 
	for signalToConnect in connectedSignals: 
		self.connect("isTriggered",self,signalToConnect)


	for mean in validMeans:
		var cache = mean.new()
		cache.initialice()
		API_014_Behavior.getModuleAtlas()[cache.enumNr] = cache 
		




#>>> Stubs for Ductyping <<<#
func run()                                  -> void : pass
func isTriggered(actorToCheck:ActorEntity)  -> void : pass 


