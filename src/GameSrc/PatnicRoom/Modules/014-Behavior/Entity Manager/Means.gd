extends Object
class_name _14_Means_Module


var name              : String
var enumNr            : int 

var associatedActions : Array
var validatorValues : Dictionary
var weight            : int



func initialice() -> void: 
	for mean in associatedActions:
		var cache = mean.new()
		API_014_Behavior.getModuleAtlas()[cache.enumNr] = cache 





#>>> Stubs for Ductyping <<<#
func run() -> void : pass

 
