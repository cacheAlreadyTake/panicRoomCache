## Introduction
Entities are a pillar in our gamedesign, almost every Item, Actor or obstacle can be tracked back to this class.  
broken down,they are just a collection of diffrent lists which contains the defining values of the game-element and references to other Entities which are in some relation to them. 
  
  
------------------------------------------------
  
  
## Variables
| <h3 style="width:119px"> **Name** </h3> | <h3>**Datatype**</h3> | <h3 style="width:150px"> **Notation** </h3>              |
|-----------------------------------------|-----------------------|----------------------------------------------------------|
| dictOfComps                             | Dictionary            | Map of all Components ``indexName:instance``             |
| dictOfTemplates                         | Dictionary            | Map of all TemplateEntities``indexName:atlasReference``  |
| arrOfFlags                              | Array                 | List of all enumNumbers                                  |
| arrOfProperty                           | Array                 | list of all enumNumbers                                  |
| arrOfConds                              | Array                 | list of all influencing Conditions                       | 


------------------------------------------------


## Functions
| <h3 style="width:119px"> **function** </h3> | <h3>**Return type**</h3> | <h3 style="width:150px"> **Notation** </h3>|
|---------------------------------------------|--------------------------|--------------------------------------------|
| getComp(compIndex)                          | *Component*              | returns the instance of Component          |
| getCompTemp(tempIndex,compIndex)            | *Component*              | returns the instance of Component          |
| getCompValue(compIndex)                     | *????*                   | returns the value of Component             |
| getCompTempValue(tempIndex,compIndex)       | *????*                   | returns the value of Component             |      
| addComponent(Component)                     | *void*                   | adds new Component into Map                |
| removeComponent(compIndex)                  | *void*                   | removes corresponding Component            |
| addTemplate(tempIndex,Template)             | *void*                   | adds new Template into Map                 |
| addFlag(enumNumber)                         | *void*                   | adds Flag to Entity                        |
| addProperty(enumNumber)                     | *void*                   | adds Property to Entity                    |
| removeProperty(enumNumber)                  | *void*                   | removes property from Entity               |
| removeFlag(enumNumber)                      | *void*                   | removes Flag from Entity                   |
| hasProperty(enumNumber)                     | *Boolean*                | returns if Entity has Property             |
| hasCond(condIndex)                          | *Boolean*                | returns if Entity has Condition            |
| has(compIndex)                              | *Boolean*                | returns if Entity has Component            |
| hasFlag(enumNumber)                         | *Boolean*                | returns if Entity has Flag                 |


------------------------------------------------


## Specific Entities
We have categoriced diffrent Types of Gameobjects into Children of this class!  
They add much readabillity and quality of live by providing proxy-functions to the lowest common anomminator:  
* [Tiles]()
* [Interactables]()
* [Actors]()
* [KitParts]()
* [KitSets]()
  
  
  
  