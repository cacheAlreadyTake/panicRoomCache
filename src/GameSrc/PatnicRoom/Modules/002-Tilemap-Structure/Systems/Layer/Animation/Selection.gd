extends SokraTiles_Chunk_Animation
class_name Sokratiles_Chunk_Selection


# ----- INITIALICE ----------------------------------------------------------- ##

func _ready():
	.initialice(ENUM.SOKRATILES.LAYER.SELECTION)



# ----- FUF --------------------------------------------------------------------- ##

func clearLayer():
	if !entsOnMap.empty():
		for currentPos in entsOnMap.keys():   set_cell(currentPos.x,currentPos.y, -1)
		entsOnMap = {}


func drawCell_quack( textureID:String, mainPos, altPos=0 ):
	if mainPos is Vector2 : mainPos = Vector2(mainPos.x,mainPos.y)
	entsOnMap[mainPos] = textureID
	_drawCell(textureID, mainPos)





func drawMouseSelection(pos:Vector2,id):
	drawCell_quack( str(id), Vector2(pos.y+1,pos.x))








