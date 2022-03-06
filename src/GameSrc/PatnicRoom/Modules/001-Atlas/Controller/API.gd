extends Node


 
# DOCS     https://mizzitgamestudios.github.io/mkDocs/site/Atlas/Atlas_Components

# BOOKMARK[epic=Modules] 001_Atlas                                               
var _interactables
var _tiles
var _kitparts
var _role
var _race
var _specialty
var _actorTemplate
var _conditions


func _init():
	_tiles           = _001_Tiles.new()
	_kitparts        = _001_Kitparts.new()
	_role            = _001_Role.new()
	_race            = _001_Race.new()
	_specialty       = _001_Specialty.new()
	_interactables   = _001_Interactables.new()
	_actorTemplate   = _001_Actor_Template.new()
	_conditions      = _001_Conditions.new()




#>>> Tile             <<<#
func Tiles()                                 -> _001_Tiles          :  return _tiles
func TileAtlas()                             -> Dictionary         :  return _tiles.atlas_Entry
func Conditions()                             -> Dictionary         :  return _conditions
func ConditionsAtlas()                             -> Dictionary         :  return _conditions.atlas_Entry
func TileSetAtlas()                          -> Dictionary         :  return _tiles.atlas_Tilesets
func getTileByTextureID(textureID:String)    -> Entity             :  return DemokrECTS.copyEntity( _tiles.atlas_Entry[textureID] )
func addTileSet(name:String,dict:Array)      -> Dictionary         :  return _tiles.createTileset(name,dict)
 

#>>> Interactables    <<<#
func Interactables()                         -> _001_Interactables  :  return _interactables
func InteractableAtlas()                     -> Dictionary         :  return _interactables.atlas_Entry


#>>> Kitparts         <<<#
func KitParts()                              -> _001_Kitparts       :  return _kitparts
func getKitByDrirectName(name:String)        -> KitPartEntity      :  return _kitparts.getDirectByAtlas(name)
func getKitGroup(name_enum_KitGroup)         -> Dictionary         :  return _kitparts.getKitGroup(name_enum_KitGroup)
			
func sortKitpartsAtlas()                     -> void               :  _kitparts.sortEntries()



# ----- ACTOR ---------------------------------------------------------------- ##


#>>> Templates        <<<#
func ActorTemplate()                         -> _001_Actor_Template :  return _actorTemplate
func ActorTemplateAtlas()                    -> Dictionary         :  return _actorTemplate.atlas_Entry

#>>> Roles            <<<#
func Role()                                  -> _001_Role           :  return _role
func RoleAtlas()                             -> Dictionary         :  return _role.atlas_Entry

#>>> Races            <<<#
func Race()                                  -> _001_Race           :  return _race
func RaceAtlas()                             -> Dictionary         :  return _race.atlas_Entry
	
#>>> Specialty        <<<#
func Specialties()                           -> _001_Specialty      :  return _specialty
func SpecialtyAtlas()                        -> Dictionary         :  return _specialty.atlas_Entry



