extends Node
class_name _Enum_FilePaths


var ENUMS_TO_STRING = {
	"TILE_SETS"         : TILE_SETS
	
	,"GAME_ELEMENTS_STABLE"        : GAME_ELEMENTS_STABLE
	,"GAME_ELEMENTS_COMMUNITY"     : GAME_ELEMENTS_COMMUNITY
	,"GAME_ELEMENTS_PERSONAL"      : GAME_ELEMENTS_PERSONAL
	,"SAVE_STATE"                  : SAVE_STATE
	,"SCENE"                       : SCENE 
	,"SUB_TITLES"                  : SUB_TITLES


}

const TILE_SETS = "res://Gamedata/Tiled/TileSets/JSON"


const SAVE_STATE = "res://Config/savestate"


const GAME_ELEMENTS_STABLE    = "res://Gamedata/Game elements/Stable"
const GAME_ELEMENTS_COMMUNITY = "res://Gamedata/Game elements/Community"
const GAME_ELEMENTS_PERSONAL  = "res://Gamedata/Game elements/Personal"

const SUB_TITLES = "res://Config/dynamic subtitles.json"


const SCENE = {
	 TITLE = "res://GameSrc/PatnicRoom/scenes/Unique/Titlescreen/Title.tscn"
	,REST  = "res://GameSrc/PatnicRoom/scenes/Gameloop/RestMode/Progression.tscn"
	,PANIC = "res://GameSrc/PatnicRoom/scenes/Gameloop/PanicMode/PanicMode.tscn"
	,LEC_VIEWER = "res://GameSrc/Universal/Scene/LEC-Viewer/Main.tscn"
}








