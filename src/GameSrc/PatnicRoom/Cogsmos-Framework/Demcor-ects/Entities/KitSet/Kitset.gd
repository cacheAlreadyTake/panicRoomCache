
# CLASS The actual Usable Skill of Players, only BaseKitPartEntity is mandatory         
# CLASS API_004_Event.mergeKitParts(Array) merges their _005_Character_Stats into this Entity         
# CLASS not all _005_Character_Stats of Kitparts gets merged, only accumulated meta-values,see beneath 
# CLASS                                                                                 
# CLASS After Merge, the single kitparts are still neccessary for run() on a Target     
# CLASS                                                                                 
# DOCS  https://mizzitgamestudios.github.io/mkDocs/site/Entities/kitset/                
# CLASS                                                                                 
# BOOKMARK[epic=Entities_Core] Kitset                                              
extends Entity 
class_name KitSetEntity



# REFACTOR  replace with specific kitpartEntities  
var base     : KitPartEntity
var mod      : KitPartEntity
var appendix : KitPartEntity
var event    : EventEntity


var toString            : String 	# VAR name of Kitset shown to player                  

var cooldownTime        : int		# VAR number of rounds in action untill its reusable  
var currentCooldownTime : int		# VAR dynamic cooldownTime                            





# ----- FUNCTIONS ------------------------------------------------------------ ##

# FUNC shows the Cooldwontimer on the GUI 
func currentCooldownTimeToRTL():
	if currentCooldownTime == cooldownTime: return "[color=green]READY[/color]"
	else:                                   return "[color=yellow]"+str(cooldownTime-currentCooldownTime)+"[/color]"



# ----- HELPERS -------------------------------------------------------------- ##


func hasMod():      return mod      != null
func hasAppendix(): return appendix != null
func getEvent() -> Dictionary : return event.main()

func selectedPositions()   -> Array : return getCompValue("C_53_SELECTED_POSITIONS")
func selectedEntities()     -> Array : return getCompValue("C_54_SELCTED_ENTITIES")
func triggerableEntities() -> Array : return getCompValue("C_55_TRIGGERABLE_ENTITIES")

