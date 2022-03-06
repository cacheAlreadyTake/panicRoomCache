extends Node
class_name _005_Common_Inventory


var playerEntity


func initialice(playerEntityPara):
	playerEntity = playerEntityPara






func credits() 		    			-> int:				return playerEntity.getCompValue("C_9_CREDITS_ACCOUNT")
func items() 					    -> String:			return playerEntity.getCompValue("C_46_ACTOR_ITEMS")

