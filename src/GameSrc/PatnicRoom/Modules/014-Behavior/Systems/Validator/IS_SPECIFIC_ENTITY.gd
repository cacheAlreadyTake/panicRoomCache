extends Object 
class_name _14_MeansValidator_isSpecificEntity



static func run(actor:ActorEntity,entity:String) -> bool:
    if entity == "InteractEntity"  :  return is actor InteractEntity
    if entity == "TileEntity"      :  return is actor TileEntity 
    if entity == "ActorEntity"     :  return is actor ActorEntity



    