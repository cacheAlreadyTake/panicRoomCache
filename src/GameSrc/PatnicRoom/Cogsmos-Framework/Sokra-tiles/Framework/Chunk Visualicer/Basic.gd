extends TileMap
class_name SokraTiles_Chunk_Basic

var entsOnMap = {}



func _drawWholeLayer() -> void:
	for currentEnt in entsOnMap.values():
		if currentEnt is Dictionary : entsOnMap.erase(currentEnt)
		else : _drawCell(instance_from_id(currentEnt).textureID(), instance_from_id(currentEnt).position )



func _drawCell(id:String, mainPos:Vector2) -> void :
	set_cell(mainPos.x,mainPos.y, self.tile_set.find_tile_by_name(id))






func stopAtDefaultTilemapSize(pos:Vector2):
	if pos.x > 99: pos.x = 99;   if pos.x < 0: pos.x = 0
	if pos.y > 99: pos.y = 99;   if pos.y < 0: pos.y = 0
	return pos







