extends Node
class_name _TextToolBox_Input


enum FORMS  {   VOID=20,RACE=21,ROLE=22,SPECIALTY=23,BASE=24,MOD=25,APPENDIX=26,CONSUMABLE=27,EVENT=28    }
enum SCENES {   INTRODUCTION=11,SELECTION=12,FORMS=13,OPTIONS=14,MAIN_MENUE=15,OPTION=16                  }




static func getFormEnumByInput(lineInput:String) -> String:
	match saniticeInput(lineInput):
		"oRace"           :   return FORMS.RACE
		"oRole"           :   return FORMS.ROLE
		"oSpecialty"      :   return FORMS.SPECIALTY
		"oBase"           :   return FORMS.BASE
		"oMod"            :   return FORMS.MOD
		"oAppendix"       :   return FORMS.APPENDIX
		"oConsumables"    :   return FORMS.CONSUMABLE
		"oKitSetEvents"          :   return FORMS.EVENT
		_                 :   return "!!ERROR!! JSONFORM OF USE_ENUM "+lineInput+" NOT FOUND!!"


static func getJSONFormByEnum(formEnum:int) -> String:
	match formEnum:
		FORMS.RACE        :   return "ActorRace.json"
		FORMS.ROLE        :   return "ActorRole.json"
		FORMS.SPECIALTY   :   return "ActorSpecialty.json"
		FORMS.BASE        :   return "KitBase.json"
		FORMS.MOD         :   return "KitMod.json"
		FORMS.APPENDIX    :   return "KitAppendix.json"
		FORMS.CONSUMABLE  :   return "ItemsConsumables.json"
		FORMS.EVENT      :    return "FORMS.EVENT"
		_                :   return "!!ERROR!! JSONFORM OF USE_ENUM "+str(formEnum)+" NOT FOUND!!"





static func getMainMenueEnumByInput(lineInput:String) -> String:
	match saniticeInput(lineInput):
		"oIntroduction"   :  return SCENES.INTRODUCTION
		"oDesign"         :  return SCENES.SELECTION
		"oBrowse"         :  return SCENES.SELECTION
		"oOption"         :  return SCENES.OPTIONS
		"oKitSetEvents"          :   return FORMS.EVENT
		_                 :  return "!!ERROR!! MAINMENUE OF "+lineInput+" NOT FOUND!!"





static func getKeywordColourPair(enumNr:int):
	match enumNr:
		SCENES.INTRODUCTION        : return Util.JSONParser.fileToDictionary("res://GameData/Alecandria/Textinserts/Keywords.json")["Introduction"]
		SCENES.MAIN_MENUE          : return Util.JSONParser.fileToDictionary("res://GameData/Alecandria/Textinserts/Keywords.json")["MainMenue"]
		SCENES.SELECTION           : return Util.JSONParser.fileToDictionary("res://GameData/Alecandria/Textinserts/Keywords.json")["Selection"]
		SCENES.OPTIONS             : return Util.JSONParser.fileToDictionary("res://GameData/Alecandria/Textinserts/Keywords.json")["Introduction"]
		_                          : return "!!ERROR!! KEYWORDS OF SCENE_ENUM "+str(enumNr)+" NOT FOUND!!"





static func getFontOfScene(enumNr:int):
	match enumNr:
		SCENES.MAIN_MENUE       : return load("res://Media/Content-Creator/customeFont/MainMenue.tres")
		SCENES.INTRODUCTION     : return load("res://Media/Content-Creator/customeFont/Introduction.tres")
		_                       : return load("res://Media/Content-Creator/customeFont/default.tres")





static func getTextByScene(enumNr:int,introductionEnum):
	match enumNr:
		SCENES.MAIN_MENUE         : return _TextToolBox_Lists_GenerallStrings.getMainMenue()
		SCENES.SELECTION          : return _TextToolBox_Lists_GenerallStrings.getSelection()
		SCENES.INTRODUCTION       : return Util.JSONParser.fileToDictionary("res://GameData/Alecandria/Textinserts/Introduction.json")[introductionEnum]
		SCENES.OPTIONS            : return "\n\n<<< BACK TO MENUE <<<\n"
		_                         : return " "






static func saniticeInput(input:String)->String: return input.replace(" ","")



