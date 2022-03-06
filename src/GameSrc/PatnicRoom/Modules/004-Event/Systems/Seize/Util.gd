extends Node
class_name _004_Util




static func getHighlightTextureOfEvent(medium:String) -> String :
	match medium:
		"AREA":        return "Marker_5_0"
		"LINEA":       return "Marker_5_1"
		"LINEA_AREA":  return "Marker_5_1"
		"SELECT":      return "-1"
		"SELF": return "Marker_5_0"
	return ""



static func getAlertTextureOfEvent(medium:String) -> String :
	match medium:
		"AREA":        return "Marker_5_3"
		"LINEA":       return "Marker_5_1"
		"LINEA_AREA":  return "Marker_5_1"
		"SELECT":      return "Marker_5_3"
		"SELF": return "Marker_5_1"
	return ""


static func getEventsNeedingDirection() -> Array: return [
	"LINEA"
]


