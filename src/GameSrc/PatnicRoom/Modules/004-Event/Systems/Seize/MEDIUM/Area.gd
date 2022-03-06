extends Node
class_name _004_Seize_MediumArea



static func run() -> Array:
	for source in [API_005_Player.currentChar.pos()]:
		foobarToo(source,true)
		foobarToo(source,false)
	return API_008_KitSet.selection.selects




static func foobarToo(source,upperHalf):
	var toItterate = int(API_008_KitSet.selection.reach)
	var itteration = 0
	while true:
		
		var middlePoint = source
		itteration += 1
		toItterate -= 1
		
		if upperHalf       : middlePoint.y -= toItterate
		else               : middlePoint.y += toItterate
		if toItterate == 0 : itteration=itteration-1
		
		
		if itteration != 1:
			_004_Seize_MediumUniversal.run(itteration,ENUM.SOKRATILES.DIRECTION_FOUR.EAST,middlePoint)
			_004_Seize_MediumUniversal.run(itteration,ENUM.SOKRATILES.DIRECTION_FOUR.WEST,middlePoint)
		
		if toItterate == 0 : return





