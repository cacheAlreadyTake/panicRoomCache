# TileEntity

---

## Introduction
Those Entities are detrimental for the Gameworld.  
They are simple enviromental Objects like a patch of grass or concrete, and hold information about the capabillities to interact with them. For example, whether the patch is burnable or not.  
 
---

## Important Components  

| <h3 style="width:200px"> **Component-name** </h3>          | <h3 style="width:200px"> **Usage** </h3>           |  
|------------------------------------------------------------|----------------------------------------------------|  
| C_67_ANY_POSITION                                          | selecting for kits                                 |    
| C_2_TEXTURE_ID                                             | indexing for Templates                             |  
| C_1_IS_WALKABLE                                        | Acessabillity for Actors                           |  

---

## Common Components by functions
The following functions return the values of its corresponding components: 
    
### Generall
| <h3 style="width:119px"> **function** </h3> | <h3>**Return type**</h3> | <h3 style="width:150px"> **Component Class-name** </h3> | <h3 style="width:210px"> **Usage** </h3> |  
|-------------|-------------|--------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| description | String      | C_0_DESCRIPTION      | Lore for Worldbuilding                                                                      |
| isWalkable  | bool        | C_1_IS_WALKABLE      | Determinds if an ActorEntity can stand on it                                                |
| textureID   | String      | C_2_TEXTURE_ID       | Readable variant of the staticTilesetNr, set together by an IFS of ``Tileset_Row_Collumn``  |
| tileName    | String      | C_6_NAME        | Oneliner reference of max 2 Words                                                           |
| layer       | String      | C_3_LAYER            | Convention of ``ENUM.SOKRATILES.LAYER`` determining on which layer its percieved            |


### toStrings
| <h3 style="width:119px"> **function** </h3> | <h3>**Return type**</h3> | <h3 style="width:150px"> **Component Class-name** </h3> | <h3 style="width:210px"> **Usage** </h3> |  
|-------------|-------------|--------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| type | String      | ???      | ???                                                                      |
| mouseHover_quack  | String        | C_6_NAME      | ducktyped function to show name by hovering the mouse over it                                                 |


### Spacial
| <h3 style="width:119px"> **function** </h3> | <h3>**Return type**</h3> | <h3 style="width:150px"> **Component Class-name** </h3> | <h3 style="width:210px"> **Usage** </h3> |  
|-------------|-------------|--------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| pos | Vector2D      | Instance-variable for perfomance reason      | returns a dictionary-like structure with ``x``  and  ``y`` keys and their float values              |
| poxX  | int        | Instance-variable for perfomance reason      | place on the X-Axis on the Tilemap                                                |
| posY   | int      | Instance-variable for perfomance reason       | place on the Y-Axis on the Tilemap  |


### Tilemap Parse
| <h3 style="width:119px"> **function** </h3> | <h3>**Return type**</h3> | <h3 style="width:150px"> **Component Class-name** </h3> | <h3 style="width:210px"> **Usage** </h3> |  
|-------------|-------------|--------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| staticTilesetNr | int      | C_7_STATIC_TILESET_NR      | Number of the Texture in the Tileset Atlas                       |
| matrixNoise  | int        | C_5_MATRIX_NOISE      | WIP |
| magicNoise   | int      | C_4_MAGIC_NOISE       | WIP |


<br>
## Quickreferences
| <h3 style="width:200px"> **Keyword** </h3>                        | <h3 style="width:200px"> **Description** </h3>   |  
|-------------------------------------------------------------------|--------------------------------------------------|  
| <h3>[Tile Atlas](Atlas/tiles.md)</h3>                             | All Tiles and their Attributes                   |    
| <h3>[Texture Atlas](Atlas/texture.md)</h3>                        | All Tiles and their Attributes                   |
| <h3>[Apply Conditions](../../Cogsmos/heGEL#Apply Conditions)</h3> | Types of triggers to attach Conditions on Tiles  |  
| <h3>[Tilemap Layer](../../Cogsmos/heGEL#Apply Conditions)</h3>    | functions to manipulate Tilemaps                 |  