extends Node
class_name _Enum_MinimalComp


var CORE_ENTITY_TYPES = {
	 "TILE"     : 0
	,"INTERACT" : 1
	,"ACTOR"    : 2
}


const ENUMS_TO_STRING = {}

const CONDITION = []

const TILE = [
	 "C_7_STATIC_TILESET_NR"
	,"C_5_MATRIX_NOISE"
	,"C_0_DESCRIPTION"
	,"C_4_MAGIC_NOISE"
	,"C_1_IS_WALKABLE"
	,"C_2_TEXTURE_ID"
	,"C_3_LAYER"
	,"C_6_NAME"
	]


const ACTOR = [
	 "C_7_STATIC_TILESET_NR"
	,"C_26_INDIRECT__005_Character_Stats"
	,"C_19_ATTRIBUTES"
	,"C_20_SKILLBLOCK"
	,"C_2_TEXTURE_ID"
	,"C_47_SYNONYM"
	,"C_6_NAME"
	,"C_12_ATLAS_INDEX"
	]


const INTERACT = [ 
	 "C_7_STATIC_TILESET_NR"
	,"C_5_MATRIX_NOISE"
	,"C_4_MAGIC_NOISE"
	,"C_0_DESCRIPTION"
	,"C_2_TEXTURE_ID"
	,"C_3_LAYER"
	,"C_6_NAME"
	]

const KITPART_BASE = [
	"C_35_KIT_MECHANICAL_SUMMARY"
	,"C_33_COOLDOWN_TIMER"
	,"C_49_EVENT_REFERENCE"
	,"C_38_KIT_PART_TYPE"
	,"C_31_KIT_CAT_TYPE"
	,"C_36_KIT_MOD_TIME"
	,"C_37_M_TYPE"
	,"C_37_M_TYPE"
	,"C_48_RARITY"
	,"C_12_ATLAS_INDEX"
	]

const KITPART_MOD = [
	"C_35_KIT_MECHANICAL_SUMMARY"
	,"C_33_COOLDOWN_TIMER"
	#,"C_59_KIT_MOD_CHANGE"
	,"C_38_KIT_PART_TYPE"
	,"C_31_KIT_CAT_TYPE"
	,"C_36_KIT_MOD_TIME"
	,"C_37_M_TYPE"
	,"C_37_M_TYPE"
	,"C_48_RARITY"
	,"C_12_ATLAS_INDEX"
	]


const LOOT_TABLE = [
	 "C_7_STATIC_TILESET_NR"
	,"C_3_LAYER"
	,"C_6_NAME"
	,"C_2_TEXTURE_ID"
	,"C_0_DESCRIPTION"
	,"C_4_MAGIC_NOISE"
	,"C_5_MATRIX_NOISE"
	,"C_61_LOOT_TABLE"
	,"C_62_LOOT_STATE"
	]





const ROLE = [
	 "C_6_NAME"
	,"C_12_ATLAS_INDEX"
	,"C_65_TIER"
	,"C_47_SYNONYM"
	,"C_37_M_TYPE"
	,"C_20_SKILLBLOCK"
	,"C_19_ATTRIBUTES"
]

const SPECIALTY = [
	 "C_6_NAME"
	,"C_12_ATLAS_INDEX"
	,"C_14_SPECIALTY_NAME"
	,"C_20_SKILLBLOCK"
	,"C_19_ATTRIBUTES"
	,"C_50_ACTOR_ROLE_DESCRIPTION"
	,"C_47_SYNONYM"
]
const RACE = [
	 "C_6_NAME"
	,"C_12_ATLAS_INDEX"
	,"C_27_RACIAL_ENEMIES"
	,"C_28_RACIAL_FRIENDS"
	,"C_19_ATTRIBUTES"
	,"C_0_DESCRIPTION"
]





const LEC_EVENT = [
	 "C_71_LEC_META_BY"
	,"C_72_LEC_META_USE"
	,"C_75_EVENT_INDEX"
	,"C_75_EVENT_INDEX"
	,"C_76_MAIN_"
]
