extends Object
class_name _DavINCi_FSM_Action





func takeActionByEnum(inputEnum,inputType):
	if inputIsSelection(inputEnum): 
		API_008_KitSet.manageKitSelection(DavINCi.cachedInput.as_text())
		
		if API_004_Event.isNeedingDirection() : DavINCi.playerState = ENUM.INPUT_PANIC.PLAYER_STATE.NEEDING_DIRECTION
		else                                  : DavINCi.playerState = ENUM.INPUT_PANIC.PLAYER_STATE.SELECTING
		
		SokraTiles.getSelection().clearLayer()
		if API_008_KitSet.selection.highlightTexture != "-1":API_008_KitSet.drawHighlight()
		API_008_KitSet.drawAlert()
	
	
	if isKitSelect(inputEnum):
		var cache = API_008_KitSet.selection.event.getRunPerformance()
		for step in cache:
			var cachedStep = step.duplicate()
			#cachedStep.pop_front()
			API_004_Event.runKitSet(cachedStep)
		DavINCi.playerState = ENUM.INPUT_PANIC.PLAYER_STATE.FINISHED






func isKitSelect(inputEnum)       -> bool : return inputEnum == ENUM.INPUT_PANIC.INPUTS.INTERFACE.ENTER and ENUM.INPUT_PANIC.PLAYER_STATE.SELECTING == DavINCi.playerState
func inputIsSelection(inputEnum)  -> bool : return inputEnum == ENUM.INPUT_PANIC.INPUTS.ACTION.SELECT














