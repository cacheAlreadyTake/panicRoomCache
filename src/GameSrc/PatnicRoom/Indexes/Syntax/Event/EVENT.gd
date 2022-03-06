extends Node
class_name EVENT_SYNTAX



const OPERATOR = {  "DECREMENT" : "DECREMENT" 
				   ,"INCREMENT" : "INCREMENT" 
				   ,"EQUALS"    : "EQUALS"    }

const LIST     = {  "ADD"       : "ADD" 
				   ,"REMOVE"    : "REMOVE" 
				   ,"SWAP"      : "SWAP"       }















static func CONCEPTS() -> Dictionary :    return {   
	"HUBS"     : {  "SOURCE"   : _004_Seize_Source        ,
					"MEDIUM"   : _004_Seize_Medium        ,
					"PERFORM"  : _004_Perform             ,
					"CONSIDER" : _004_Consider            },
					
	"SEIZE"    : {  "SOURCE":SOURCE() , "MEDIUM":MEDIUM() },
	"PERFORM"  : PERFORM(),
	"CONSIDER" : CONSIDER()
	}



static func SOURCE() -> Dictionary: return {		"SELF"     : _004_Seize_SourceSelf    }


static func MEDIUM() -> Dictionary: return {		"LINEA"    : _004_Seize_MediumLinea    , 
													"SELECT"   : _004_Seize_MediumSelect   , 
													"SELF"     : _004_Seize_SourceSelf     ,
													"AREA"     : _004_Seize_MediumArea     }


static func PERFORM() -> Dictionary: return {		"COMP"     : _004_Consider_Component   ,
													"FLAG"     : _004_Consider_Flag        ,
													"PROP"     : _004_Consider_Property    ,
													"UNIQ"     : _004_Consider_Property    ,
													"COND"     : _004_Consider_Condition   }


static func CONSIDER() -> Dictionary: return {		"COMP"     : _004_Consider_Component   , 
													"TYPE"     : _004_Consider_Type        , 
													"FLAG"     : _004_Consider_Flag        ,
													"PROP"     : _004_Consider_Property    ,
													"COND"     : _004_Consider_Condition   }



