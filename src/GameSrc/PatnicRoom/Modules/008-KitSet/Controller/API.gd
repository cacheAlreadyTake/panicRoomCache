extends Node



# DOCS  docs/docs/Modules/004.md                                                  
# BOOKMARK[epic=Modules] 004_KitSet                                                
# ----- INITIALICER -------------------------------------------------------------- ##

class KitSelection:
	var kitset ; var event ; var selects =[] ; var triggers=[]
	var reach  ; var sources ; var medium
	var alertTexture ; var highlightTexture


var _kitSetMerger := _008_KitSetMerger.new()
var _kitSelect    := _008_KitSelect.new()
var selection   




func redirectSelection(directionEnum) -> void : manageDirectionalSelect(directionEnum)

func drawHighlight()  -> void : _kitSelect.drawSelection(selection.selects,API_008_KitSet.selection.highlightTexture)
func drawAlert()      -> void : _kitSelect.drawSelection(selection.triggers,API_008_KitSet.selection.alertTexture)


# ----- INITIALICER -------------------------------------------------------------- ##


func getMergedKitsets(arrayOfKitparts:Array) -> KitSetEntity : return _kitSetMerger.mergeKitParts(arrayOfKitparts)



# ----- PROCESS ------------------------------------------------------------------ ##




func manageKitSelection(inputNr:String) -> void:
	selection = _008_KitSelect_Util.setUpReferences(int(inputNr)-1)
	
	if API_008_KitSet.selection.medium == "SELF": selection.selects.append(API_005_Player.currentChar.pos())
	else:
		#>>> VECTOR 2D <<<#
		selection.selects = API_004_Event.getSelectedPositions()
		selection.selects = _008_KitSelect_Util.saniticePosition(selection.selects)
	
	#>>> ENTITIES ACROSS ALL LAYERS <<<#
	selection.selects  = _kitSelect.setSelections(selection.selects)
	selection.triggers = _kitSelect.validateSelects(API_008_KitSet.selection.event.getConsider())
	



	
func manageDirectionalSelect(directionEnum)->void:
	SokraTiles.getTilemapLayer(ENUM.SOKRATILES.LAYER.SELECTION).clearLayer()
	selection.selects.clear()
	selection.triggers.clear()

	_004_Seize_MediumUniversal.run(int(selection.reach),directionEnum,API_005_Player.currentChar.pos())
	selection.selects = _008_KitSelect_Util.saniticePosition(selection.selects)

	selection.selects = _kitSelect.setSelections(selection.selects)
	selection.triggers = _kitSelect.validateSelects(API_008_KitSet.selection.event.getConsider())

	API_008_KitSet.selection.alertTexture = "Marker_5_1"
	#API_008_KitSet.drawHighlight()
	API_008_KitSet.drawAlert()




