extends Object
class_name _DavINCi_FSM_Interface


# ----- INPUT HANDLER -------------------------------------------------------- ##

func takeActionByEnum(inputEnum, inputType):

	# input: ENTER   &&   player: SELECTING #
	if isKitSelect(inputEnum):  enterKitSet()
	
	if isOnlookRightClick(inputEnum):
		DavINCi.playerState = ENUM.INPUT_PANIC.PLAYER_STATE.STANDING



# ----- VALIDATOR ------------------------------------------------------------ ##

func isKitSelect(inputEnum): return inputEnum == ENUM.INPUT_PANIC.INPUTS.INTERFACE.ENTER and ENUM.INPUT_PANIC.PLAYER_STATE.SELECTING == DavINCi.playerState
func isOnlookRightClick(inputEnum): return inputEnum == ENUM.INPUT_PANIC.INPUTS.INTERFACE.RIGHT_CLICK



# ----- PROCESSES ------------------------------------------------------------- ##


func enterKitSet():
	API_004_Event.runKitSet(API_008_KitSet.selection.kitset)
	DavINCi.playerState = ENUM.INPUT_PANIC.PLAYER_STATE.FINISHED
