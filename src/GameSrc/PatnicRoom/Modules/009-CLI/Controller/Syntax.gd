extends Object
class_name _017_Syntax


static func getSyntax():
	return{


		"common":{
			
			"restmode" : {
				 "parameter" : [] 
				,"toString"  : "enters the P@nicroom of the chunk"
				,"class"     : _API_017_Cmd_Restmode
				,"list"      : [] 
				,"input"     : "restmode"
			},
			
			"no clip" : {
				 "passive"   : true
				,"parameter" : [] 
				,"toString"  : "walking through inwalkables"
				,"class"     : _API_017_Cmd_NoClip
				,"list"      : [] 
				,"input"     : "no clip"
			},
			
			"nodeath" : {
				"parameter" : [] 
			   ,"toString"  : "no condition or attacks affects player"
			   ,"class"     : ""
			   ,"list"      : [] 
			   ,"input"     : "WIP"
			}
		},



		"kits":{
			
			"get kit base":{ 
				"parameter" : ["name of kit"]
			   ,"toString"  : "add BasePart to kitventory"
			   ,"class"     : "" 
			   ,"list"      : []
			   ,"input"     : "WIP"
			},
			
			"get kit mod":{ 
				 "parameter" : ["name of kit"]
				,"toString"  : "add ModPart to kitventory"
				,"class"     : ""
				,"list"      : []
				,"input"     : "WIP"
		   },
			
		   "get kit appendix" : { 
				"parameter" : ["name of kit"] 
			   ,"toString"  : "add AppendixPart to kitventory"
			   ,"class"     : ""
			   ,"list"      : [] 
			   ,"input"     : "WIP"
			}
		},



		"gear":{
			
			"add credits":{ 
				"parameter" : ["amount"]
			   ,"toString"  : "add credits to account"
			   ,"class"     : _API_017_Cmd_AddCredits
			   ,"list"      : [["50","100","1000","10000"]]
			   ,"input"     : "add credits"
		   },
			"add item":{ 
				"parameter" : ["name of item"]
			   ,"toString"  : "add items to Inventory"
			   ,"class"     : "" 
			   ,"list"      : []
			   ,"input"     : "WIP"
		   }
		},



		"spawn":{
			
			"spawn Template actor" : { 
				"parameter" : ["template"] 
			   ,"toString"  : "spawn random actor above"
			   ,"class"     : _API_017_Cmd_SpawnTemplateActor
			   ,"list"      : [API_001_Atlas.ActorTemplateAtlas()]
			   ,"input"     : "spawn template actor"
		   },
			
		   "spawn tile" : { 
				"parameter" : ["textureID"] 
			   ,"toString"  : "spawn tile above"
			   ,"class"     : _API_017_Cmd_SpawnTile
			   ,"list"      : [API_001_Atlas.TileAtlas()] 
			   ,"input"     : "tile"
		   }
		},



	}







