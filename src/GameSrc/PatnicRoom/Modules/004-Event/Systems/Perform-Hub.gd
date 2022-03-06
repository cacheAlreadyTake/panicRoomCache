extends Object
class_name _004_Perform



func run(toPerform:Array) -> void :
	toPerform.erase("OF")
	toPerform.erase("FILE")
	toPerform.erase("BY")
	match toPerform.pop_front():
		"UNIQ"  : uniqueStatmod.run(toPerform)
		"COMP"  : component.run(toPerform)
		"COND"  : condition.run(toPerform)
		"PROP"  : property.run(toPerform)
		"FLAG"  : flag.run(toPerform)
		
		
		_:printerr("ERROR!! at EVENT_PARSE, PERFORM : "+str(toPerform)+" NOT FOUND")



var uniqueStatmod :=  _004_Perform_UniqueStatmod.new()
var component     :=  _004_Perform_Component.new()
var flag          :=  _004_Perform_Flag.new()
var property      :=  _004_Perform_Property.new()
var condition     :=  _004_Perform_Condition.new()


func _init() -> void :
	component.initialice(_Comp.getComponents())
	flag.initialice(_Flags.getFlags())
	property.initialice({})





static func getType() -> Dictionary :    return {
	 "TILE"         :   TileEntity
	,"INTERACT" :   InteractEntity
	,"ACTOR"        :   ActorEntity
}



