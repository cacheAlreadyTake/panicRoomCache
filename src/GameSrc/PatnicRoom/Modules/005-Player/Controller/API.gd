extends Node


# BOOKMARK[epic=Modules] 006_Player                                              
# ----- INITIALICE ----------------------------------------------------------- ##


var chargenSelecttion : Dictionary
var inputMode         := true


var inputSignals      := _005_In.new()


var currentChar       := PlayerEntity.new()

var startingKitsets


var team              := _005_Common_Team.new()
var cloudPrinter      := _005_Common_Cloudprinter.new()
#var recycler          := .new()


var stations          := _005_Common_Station.new()
var stationSetter     := _005_Common_StationSetter.new()



# ----- CURRENT CHAR PROXY --------------------------------------------------- ##


#>>> Inventory  <<<# 
func inventory()         -> _005_Common_Inventory            :  return currentChar.inventory()


#>>> Kits       <<<# 
func kitventory()        -> _005_Common_Kitventory           :  return currentChar.kitventory()
func kitparts()                                              :  return kitventory().kitparts() 
func kitsets()                                               :  return kitventory().kitparts()


#>>> Stats      <<<# 
func stats()             -> _005_Character_Stats             :  return currentChar.stats()
func skills()                                                :  return stats().skills()
func attributes()                                            :  return stats().attributes()
func indirects()                                             :  return stats().indirects()



# ----- GETTER --------------------------------------------------------------- ##


func getInputMode()            -> bool                       :  return inputMode


#>>> Stations   <<<# 
func getStations()             -> _005_Common_Station       :  return stations
func getCurrentStationSetter() -> _005_Common_StationSetter :  return stationSetter


#>>> Kits       <<<# 
func getAllGearedKitsets()     -> Array                      :  return kitventory().kitsets().getAll()
func getAllKitParts()          -> Array                      :  return kitventory().kitparts().getAll()
func getGearedKitSetByNr(nr)   -> KitSetEntity               :  return kitventory().kitsets().getByNr(nr)


# ----- SELECTED TILES ------------------------------------------------------- ##


func getSelectedTiles()                        -> Array :  return currentChar.getCompValue("C_53_SELECTED_POSITIONS")
func getSelectedTilesComp() -> C_53_SELECTED_POSITIONS : 
	print(currentChar.getComp("C_53_SELECTED_POSITIONS").value)
	return currentChar.getComp("C_53_SELECTED_POSITIONS")

func resetSelectedTiles()                      -> void  :  getSelectedTilesComp().reset()
func appendSelectedTiles(arr)                  -> void  :  getSelectedTilesComp().addToCache(arr)
func appendSelectedTilesCacheIntoPerma()       -> void  :  getSelectedTilesComp().appendCacheIntoPerma()



# ----- CHARACTER ------------------------------------------------------------ ##


func generateNewChar(chargenDict:Dictionary)  -> void           :  _005_LoadChar.generateNewSaveState(chargenDict)
func loadChar()                            -> void           :  _005_LoadChar.parse("one",1)
func loadQuickStartChar()                  -> void           :  _005_LoadChar.parse("quickStart",1)
func setIndirectStats(ent)                 -> void           :  _005_Character_IndirectStats.calculate(ent)

	










