

# Components



| name | suggestion | description | validInputs | validType | nameToShow | 
|  --  |  --  |  --  |  --  |  --  |  --  | 
| C_0_DESCRIPTION | Something offensive or hyperbolic, best case both | Is shown to the player in things like mousehover or onlook-action | [] | STRING | Description | 
| C_1_IS_WALKABLE | Interactables are often but not neccesarilly unwalkable, Meat Tiles are | determinds if an Actor can walk on this tile | [] | BOOLEAN | Walkable | 
| C_2_TEXTURE_ID | *tilesetname*_*rownumber*_*collumnumber* of its picture in folder : GameData/Tiled/Tileset | Name of the Texture to be shown | [General_0_0, General_0_1, General_0_2, General_0_3, General_0_4, General_0_5, General_2_0, General_4_0, General_4_1, General_4_2, POI_0_0, POI_0_2, POI_0_4, POI_0_6, POI_0_8, POI_0_10, POI_0_12, POI_0_14, POI_2_0, POI_2_1, Suburban_0_0, Suburban_0_1, Suburban_0_2, Suburban_0_3, Suburban_1_1, Suburban_1_2, Suburban_10_12, Suburban_10_13, Suburban_10_14, Suburban_11_12, Suburban_11_14, Suburban_12_12, Suburban_12_13, Suburban_12_14, Suburban_0_12, Suburban_0_13, Suburban_0_14, Suburban_0_15, Suburban_1_12, Suburban_1_13, Suburban_1_14, Suburban_1_15, Suburban_2_0, Suburban_2_1, Suburban_2_12, Suburban_2_13, Suburban_2_14, Suburban_3_12, Suburban_3_13, Suburban_4_0, Suburban_4_1, Suburban_4_3, Suburban_4_4, Suburban_5_12, Suburban_5_13, Suburban_5_14, Suburban_5_15, Suburban_6_0, Suburban_6_1, Suburban_6_2, Suburban_6_4, Suburban_6_12, Suburban_6_13, Suburban_6_14, Suburban_6_15, Suburban_7_12, Suburban_7_13, Suburban_7_14, Suburban_8_12, Suburban_8_13, Suburban_11_3, Suburban_11_4, Suburban_11_5, Suburban_12_3, Suburban_12_4, Suburban_12_5, CommonBNPC_0_0, CommonBNPC_0_2, CommonBNPC_0_4, CommonBNPC_0_6, CommonBNPC_2_0, CommonBNPC_2_2, CommonBNPC_2_4, CommonBNPC_2_6, CommonBNPC_4_0, CommonBNPC_4_2, CommonBNPC_4_4, CommonBNPC_4_6, CommonBNPC_6_0, CommonBNPC_6_2, CommonBNPC_6_4, CommonBNPC_6_6, CommonBNPC_8_0, CommonBNPC_8_2, CommonBNPC_8_4, CommonBNPC_8_6, Security_0_0, Security_0_1, Security_0_2, Security_1_0, Security_1_1, Security_1_6, Security_1_7, Security_1_8, Security_2_0, Security_2_1, Security_2_2, Security_2_6, Security_2_7, Security_2_8, Security_3_0, Security_3_1, Security_3_2, Security_3_6, Security_3_7, Marker_0_0, Marker_0_1, Marker_0_2, Marker_0_3, Marker_0_4, Marker_0_5, Marker_1_4, Shop_0_0, Shop_0_1, Shop_0_2, Shop_0_3, Shop_1_0, Shop_1_1, Shop_1_2, Shop_1_3, Shop_2_0, Shop_2_1, Shop_2_2, Shop_2_3, Shop_3_0, Shop_3_1, Shop_3_2, Shop_3_3, Nature_0_0] | STATIC_LIST | Texture-ID | 
| C_3_LAYER | Magics and Matrix are not implemented yet! | Determinds on which layer the entity is indexed on Map | [ACTOR, PLAYER, MEAT_GROUND, MEAT_INTERACTABLE, MATRIX_GROUND, MATRIX_INTERACTABLE, MAGIC_GROUND, MAGIC_INTERACTABLE, SELECTION, CONDITION] | STATIC_LIST | Layer | 
| C_4_MAGIC_NOISE | WIP, not implemented,has no influence at the moment | Determinds the handicap for sourronding dice tosses | [] | INTEGER | Magic Noise | 
| C_5_MATRIX_NOISE | WIP, not implemented,has no influence at the moment | Determinds the handicap for sourronding dice tosses | [] | INTEGER | Matrix Noise | 
| C_6_NAME | max 2 words / 15 chars | short reference shown in the most cases | [] | STRING | Name | 
| C_7_STATIC_TILESET_NR | Will be dynamically found at Bootstrap (at parsing tilesets) | Number of tile in Master-atlas | [] | INTEGER | static Tileset Number (do not fill) | 
| C_8_LEC_META | *tilesetname*_*rownumber*_*collumnumber* of its picture in folder : GameData/Tiled/Tileset | Name of the Texture to be shown | [General_0_0, General_0_1, General_0_2, General_0_3, General_0_4, General_0_5, General_2_0, General_4_0, General_4_1, General_4_2, POI_0_0, POI_0_2, POI_0_4, POI_0_6, POI_0_8, POI_0_10, POI_0_12, POI_0_14, POI_2_0, POI_2_1, Suburban_0_0, Suburban_0_1, Suburban_0_2, Suburban_0_3, Suburban_1_1, Suburban_1_2, Suburban_10_12, Suburban_10_13, Suburban_10_14, Suburban_11_12, Suburban_11_14, Suburban_12_12, Suburban_12_13, Suburban_12_14, Suburban_0_12, Suburban_0_13, Suburban_0_14, Suburban_0_15, Suburban_1_12, Suburban_1_13, Suburban_1_14, Suburban_1_15, Suburban_2_0, Suburban_2_1, Suburban_2_12, Suburban_2_13, Suburban_2_14, Suburban_3_12, Suburban_3_13, Suburban_4_0, Suburban_4_1, Suburban_4_3, Suburban_4_4, Suburban_5_12, Suburban_5_13, Suburban_5_14, Suburban_5_15, Suburban_6_0, Suburban_6_1, Suburban_6_2, Suburban_6_4, Suburban_6_12, Suburban_6_13, Suburban_6_14, Suburban_6_15, Suburban_7_12, Suburban_7_13, Suburban_7_14, Suburban_8_12, Suburban_8_13, Suburban_11_3, Suburban_11_4, Suburban_11_5, Suburban_12_3, Suburban_12_4, Suburban_12_5, CommonBNPC_0_0, CommonBNPC_0_2, CommonBNPC_0_4, CommonBNPC_0_6, CommonBNPC_2_0, CommonBNPC_2_2, CommonBNPC_2_4, CommonBNPC_2_6, CommonBNPC_4_0, CommonBNPC_4_2, CommonBNPC_4_4, CommonBNPC_4_6, CommonBNPC_6_0, CommonBNPC_6_2, CommonBNPC_6_4, CommonBNPC_6_6, CommonBNPC_8_0, CommonBNPC_8_2, CommonBNPC_8_4, CommonBNPC_8_6, Security_0_0, Security_0_1, Security_0_2, Security_1_0, Security_1_1, Security_1_6, Security_1_7, Security_1_8, Security_2_0, Security_2_1, Security_2_2, Security_2_6, Security_2_7, Security_2_8, Security_3_0, Security_3_1, Security_3_2, Security_3_6, Security_3_7, Marker_0_0, Marker_0_1, Marker_0_2, Marker_0_3, Marker_0_4, Marker_0_5, Marker_1_4, Shop_0_0, Shop_0_1, Shop_0_2, Shop_0_3, Shop_1_0, Shop_1_1, Shop_1_2, Shop_1_3, Shop_2_0, Shop_2_1, Shop_2_2, Shop_2_3, Shop_3_0, Shop_3_1, Shop_3_2, Shop_3_3, Nature_0_0] | STATIC_LIST | MetaData of LEC | 
| C_9_CREDITS_ACCOUNT | Implemented but no Influence / Usage | Amount of money in possesion | [] | INTEGER | Credits | 
| C_10_PERKS | WIP, not implemented,has no influence at the moment | Unique advantages of the Char | [] | ARRAY | Perks | 
| C_11_RACE_NAME | Are used as Index for API_001_Atlas.ActorRace , CAPSLOCK is recommended | toString of the Template name | [DWARF, ELF, HUMAN, ORC, TROLL] | DYNAMIC_LIST | Race name | 
| C_13_ROLE_NAME | Are used as Index for API_001_Atlas.ActorRole , CAPSLOCK is recommended | toString of the Template name | [ARSENIST_1, BRAWLER_1, GUNSLINGER_1, HACKER_1, INFOBROKER_1, SPELLCASTER_1] | DYNAMIC_LIST | Role name | 
| C_14_SPECIALTY_NAME | Are used as Index for API_001_Atlas.ActorSpecialty , CAPSLOCK is recommended | toString of the Template name | [BOTTLE_COLLECTOR, DRUG_DEALER, ESOTERIC_CONARTIST, FECAL_ANALYCER, FREELANCER_HOBO, WAGESLAVE] | DYNAMIC_LIST | Specialty name | 
| C_15_BODYPARTS | WIP, not implemented,has no influence at the moment | All Bodypart-template of Race | [] | CONTAINER | List of All Bodyparts | 
| C_17_HITPROBABILLITY |  | Bodypart hit % | [] | INTEGER | propabillity to get random hit in percent | 
| C_18_ATTRIBUTEMOD | modul of C_19, we recommend C_19 for usage | Single Attribute value of C_19 | [] | NULL | Attribute mod | 
| C_19_ATTRIBUTES |  | add modifiers to the biological potential of an Actors | [AGILLITY, CONSTITUTION, STRENGTH, REACTION, LOGIC, INTUITION, WILLPOWER, CHARISMA] | STATIC_LIST | Attributes | 
| C_20_SKILLBLOCK |  | List of all skills and their values | [] | {ASSENSING:4, CONCEPTUALICING:2, COPING:7, CRAFTING:0, DEBUGGING:5, ENDURING:6, FILTERING:8, PERCEVING:3, PHYLOSOPHIZING:1, REPRESSING:10, SILENCING:11, SNEAKING:9} | Skillblock | 
| C_21_POS_TO_WALK_TO | often the same as C_6, maybe shorter | often used Reference name | [] | VECTOR2D | Name | 
| C_22_LIMITS | Gets calculatet on runtime by Actors Attributes | max. succeses per dice-role | [] | INTEGER | Limits | 
| C_23_CARRIAGE | Gets calculatet on runtime by Actors Attributes | max units Actor can carry | [] | INTEGER | Carriage capacity | 
| C_25_MAX_KITSETS | not counting Kitsets from Starting-cheat  | current maxm of kitsets,integral to Char-progression | [] | INTEGER | Paintollerance | 
| C_26_INDIRECT_STATS |  | name of its fightingstyle | [] | DICTIONARY | Indirect _005_Character_Stats | 
| C_27_RACIAL_ENEMIES |  | choose	races for prejudices | [DWARF, ELF, HUMAN, ORC, TROLL] | STATIC_LIST | racial enemies | 
| C_28_RACIAL_FRIENDS | yes this is reference | choose	races for pride | [DWARF, ELF, HUMAN, ORC, TROLL] | STATIC_LIST | racial friends | 
| C_29_LISTING_PRICE | WIP, not implemented,has no influence at the moment | the usual price when its bought | [] | INTEGER | listing price | 
| C_30_NEEDED_BACKPACK_SLOTS | WIP, not implemented,has no influence at the moment | size and wight taking up to carry | [] | INTEGER | backpack slots | 
| C_31_KIT_CAT_TYPE |  | type of kit of the Surv9 | [HACK, DRONE, CYBERWARE, RITE, SPELL, INFUSION, GUN, MEELE, ARMOR] | STATIC_LIST | kit Category | 
| C_32_LIST_OF_CONDITIONS |  | name of its fightingstyle | [] | ARRAY | role description | 
| C_33_COOLDOWN_TIMER | guide value: Rarity*1 | by actions of player | [] | INTEGER | cooldown | 
| C_34_LOG_TO_STRING |  | is shown to the player in logs | [] | STRING | log entry | 
| C_35_KIT_MECHANICAL_SUMMARY | about 80 characters at max | shown as short explaination of usage | [] | STRING | summary | 
| C_36_KIT_MOD_TIME | guide value: Rarity*1,5 | number of Panicrooms before its usable | [] | STRING | setup time | 
| C_37_M_TYPE |  | name of its fightingstyle | [MEAT, MAGIC, MATRIX] | STRING | layer of perception | 
| C_38_KIT_PART_TYPE | Base: Main definition, Mod: Specialication, Appendix: Side-effect | place in Kitset | [BASE, MOD, APPENDIX] | STRING | kit Part | 
| C_39_KITSLOT_PROGRESSION |  | countdown untill the Kit in its Restroom is finished | [] | INTEGER | progression edited KitSet | 
| C_41_PERK_PROGRESSION |  | X and Y on the tilemap | [] | INTEGER | position | 
| C_42_ROLE_VARIETY |  | name of its fightingstyle | [] | ARRAY | role description | 
| C_44_STREETNAME |  | unique Title | [] | STRING | Streetname | 
| C_45_CHARACTER_NAME |  | the by parents given name,used outsides the Shadows | [] | STRING | Character name | 
| C_46_ACTOR_ITEMS |  | often owned by an Actor | [] | STRING | List of Items | 
| C_47_SYNONYM |  | list of differnt names for this spcialication | [] | ARRAY | synonyms | 
| C_48_RARITY | 1: Drek, 5: Fixer, 10: R&D-Prototype | chance to loot on a scale of 1 to 10 | [Drek                 standard, Worn out             standard, Do it yourself       standard, Wageslave            standard, Industrial           standard, Upper class          standard, Federal              standard, Fixer                standard, Elite runner         standard, Megacon prototype    standard] | STATIC_LIST | Rarity | 
| C_49_EVENT_REFERENCE |  | Is used to build EffectEntity | [] | EFFECT | EffectEntity | 
| C_50_ACTOR_ROLE_DESCRIPTION |  | like description a flavor-text | [] | STRING | role description | 
| C_51_PLAYER_KITSETS |  | list of kitsets | [] | ARRAY | Actors KitSets | 
| C_52_STARTING_KITSETS |  | adds their indexes as kitsets to the Character by openeing the menue | [] | ARRAY | Starting Kitsets Cheat | 
| C_53_SELECTED_POSITIONS |  | Chached selects for later use | [] | NULL | Selected Tiles | 
| C_54_SELCTED_ENTITIES |  | Chached selects for later use | [] | NULL | Selected Tiles | 
| C_55_TRIGGERABLE_ENTITIES |  | Chached selects for later use | [] | NULL | Selected Tiles | 
| C_56_GEAR |  | name of its fightingstyle | [] | NULL | Gear | 
| C_57_HITPOINTS |  | name of its fightingstyle | [] | INTEGER | role description | 
| C_58_ALTERNATIVE_TEXTURES |  | Can be swapped by change statmode | [] | STRING | Alternative Textures | 
| C_59_KIT_MOD_CHANGE |  | Metadata for ModKitPart | [] | ARRAY | Mod KitSet Data | 
| C_60_BASE_KIT_REFERENCE |  | choose the kit to specialice | [] | STRING | base-kit reference | 
| C_61_LOOT_TABLE |  | has the variety and probabillity of drops | [] | DICTIONARY | LootTable Data | 
| C_62_LOOT_STATE |  | name of its fightingstyle | [] | STRING | role description | 
| C_63_APPLY_CONDITION_SPREADING |  | makes it able to spread fire | [] | STRING | burnable | 
| C_64_APPLY_CONDITION_WALKING |  | applies condition when walking on tile | [] | STRING | condition by walking | 
| C_65_TIER | on a scale of 1 to 10 | quality of Item | [] | INTEGER | Tier | 
| C_67_SURFACE_PROPERTIES | on a scale of 1 to 10 | quality of Item | [] | ARRAY | tier | 
| C_68_KITVENTORY |  | name of its fightingstyle | [] | ARRAY | role description | 
| C_69_KITSET_FAMILY |  | Index of the BaseKitPart | [] | STRING | KitSetFamily | 
| C_70_SELECTED_TARGET |  | name of its fightingstyle | [] | STRING | role description | 
| C_71_LEC_META_BY |  | name of its fightingstyle | [] | STRING | role description | 
| C_72_LEC_META_USE |  | name of its fightingstyle | [] | STRING | role description | 
| C_73_KITSET_OF_EVENT |  | name of its fightingstyle | [] | KitSetEntity | role description | 
| C_74_EVENT_MAIN_DICT |  | name of its fightingstyle | [] | DICTIONARY | role description | 
| C_76_EVENT_REFERENCE_DICT |  | name of its fightingstyle | [] | STRING | role description | 
| C_187_TEST | something offensive or hyperbolic,best case both | is shown to the player in things like mousehover or onlook-action | [] | STRING | lore-description | 

