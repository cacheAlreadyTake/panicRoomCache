extends Node
class_name _008_KitSelect_Util


class KitSelection:
	var kitset ; var event ;var selects =[] ; var triggers=[]
	var reach  ; var source ; var medium
	var alertTexture ; var highlightTexture



static func setUpReferences(inputNr:int):
	var selection = KitSelection.new()
	
	selection.kitset = API_005_Player.kitventory().kitsets().getByNr(inputNr)
	selection.event  = selection.kitset.event
	
	selection.reach  = selection.event.getReach()
	selection.source = API_005_Player.currentChar.pos()
	selection.medium = selection.event.getMedium()
	
	selection.alertTexture     = API_004_Event.getAlertColor(selection.medium)
	selection.highlightTexture = API_004_Event.getHighlightColor(selection.medium)
	
	for comp in ["C_53_SELECTED_POSITIONS","C_54_SELCTED_ENTITIES","C_55_TRIGGERABLE_ENTITIES"] : selection.kitset.getComp(comp).reset()
	
	return selection
	



static func saniticePosition(toSanitice:Array) -> Array :
	var toReturn = {}
	
	#>>> OUT OF MAP <<<#
	for pos in toSanitice:
		if pos.x < 0 or pos.x >100 or pos.y < 0 or pos.y >100: pass
		else:toReturn[pos]=pos
	
	
	#>>> SOURCE ITSELF <<<#
	for pos in toReturn.keys():
		for source in [API_008_KitSet.selection.source]:
			if pos == source: toReturn.erase(pos)
	
	
	return toReturn.keys()
