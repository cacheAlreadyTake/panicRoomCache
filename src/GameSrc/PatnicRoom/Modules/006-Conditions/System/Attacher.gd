extends Node
class_name _006_Condition_Attacher




static func run(ent, condName:String, duration:int, var level:int=0) -> void :
		if is_instance_valid(ent):
			var condTemp   = API_001_Atlas.ConditionsAtlas()[condName]
			var newCondEnt = ConditionEntity.new()
			
			ent.dictOfConds[condName] = newCondEnt
			newCondEnt.dictOfComps    = condTemp.dictOfComps.duplicate(true)
			newCondEnt.affectedEnt    = ent
			newCondEnt.duration       = duration
			newCondEnt.effects        = condTemp.effects
			newCondEnt.level          = level
			
			#for effect in newCondEnt.effects: for value in effect: if "DURA" in value: value.replace("DURA",str(newCondEnt.duration))
			#for effect in newCondEnt.effects.values(): for value in effect.values(): if "LEVEL" in str(value): value.replace("LEVEL",str(newCondEnt.level))
			
			Signals.connect("Effect_Turn_Started",newCondEnt,"run")
			SokraTiles.getCondition().addLayerEntry(ent,condName,newCondEnt.texture())




