
# CLASS                                                                           
# CLASS                                                                           
# DOCS                                                                            
# BOOKMARK[epic=Modules] 002_Tilemap_Structure                                    
extends Node


# ----- INITIALICE ----------------------------------------------------------- ##

var shallowCmdAtlas= {}
var cmdsToString  = []
var cmdsSyntax    = {}
var activeCheats  = []


func _ready() -> void:   
	for type in getSyntax().keys():   for cmd in getSyntax()[type].keys():   shallowCmdAtlas[cmd] = getSyntax()[type][cmd]
	for category in API_009_CLI.getSyntax().values():
		for cmd in category.values():
			
			var key         = cmd["input"]
			cmdsSyntax[key] = cmd
			cmdsToString.append(key)




func processCmd(cmd:String,arrOfParameter:Array): 
	cmdsSyntax[cmd]["class"].run(arrOfParameter)


func processCmdRaw(cmd:String,arrOfParameter:Array): 
	shallowCmdAtlas[cmd]["class"].run(arrOfParameter)


func getSyntax(): return _017_Syntax.getSyntax()

func getMetaOfCmd(cmd): return shallowCmdAtlas[cmd]
