
# CLASS                                                                              
# DOCS 	                                                                             
# CLASS                                                                              
# BOOKMARK[epic=Entities_Kitpart] Base                                               
extends KitPartEntity
class_name BaseKitPartEntity

func _init(ent=null) -> void:
	if is_instance_valid(ent):
		self.dictOfComps     = ent.dictOfComps.duplicate(true)
		self.arrOfFlags      = ent.arrOfFlags.duplicate(false)
		self.dictOfTemplates = ent.dictOfTemplates.duplicate(false)
		ent.free()




