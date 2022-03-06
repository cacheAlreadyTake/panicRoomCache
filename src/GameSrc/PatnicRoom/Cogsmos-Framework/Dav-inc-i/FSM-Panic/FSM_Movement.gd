extends Object
class_name _DavINCi_FSM_Movement


# ----- INPUT HANDLER -------------------------------------------------------- ##


var kitsetCache
func takeActionByEnum(inputEnum, inputType):
	
	# input: W || A || S || D   &&   player: NEEDING_DIRECTION # BUG
	if isPlayerStateNeedingDirection(): setKitSetDirection(inputEnum)

	# input: W || A || S || D   &&   player: STANDING # 	
	elif inputIsMovement(inputEnum):    movePlayer(inputEnum)
		


# ----- VALIDATORS ----------------------------------------------------------- ##


func inputIsMovement(inputEnum):       return ENUM.INPUT_PANIC.INPUTS.MOVEMENT.values().has(inputEnum)
func isPlayerStateNeedingDirection():  return ENUM.INPUT_PANIC.PLAYER_STATE.NEEDING_DIRECTION == DavINCi.playerState 



# ----- MOVEMENTS ------------------------------------------------------------ ##


func movePlayer(inputEnum):
	SokraTiles.getPlayer().movePlayer( inputEnum )
	SokraTiles.getSelection().clearLayer()
	DavINCi.playerState = ENUM.INPUT_PANIC.PLAYER_STATE.FINISHED


func setKitSetDirection(inputEnum):
	var directionEnum
	match DavINCi.cachedInput.as_text():
		"W" :   directionEnum = ENUM.SOKRATILES.DIRECTION_FOUR.NORTH
		"A" :   directionEnum = ENUM.SOKRATILES.DIRECTION_FOUR.WEST
		"S" :   directionEnum = ENUM.SOKRATILES.DIRECTION_FOUR.SOUTH
		"D" :   directionEnum = ENUM.SOKRATILES.DIRECTION_FOUR.EAST
	
	API_008_KitSet.redirectSelection(directionEnum)
	API_008_KitSet.drawAlert()
	DavINCi.playerState = ENUM.INPUT_PANIC.PLAYER_STATE.SELECTING


