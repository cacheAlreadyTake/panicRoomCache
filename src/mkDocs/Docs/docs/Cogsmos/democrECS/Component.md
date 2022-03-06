## Introduction
Components are Container for values and are conventionaliced by a on startup declared dictionary.    
 

------------------------------------------------


## Variables
| <h3 style="width:119px"> **Name** </h3> | <h3>**Datatype**</h3> | <h3 style="width:150px"> **Notation** </h3>              |
|-----------------------------------------|-----------------------|----------------------------------------------------------|
| owner                                   | Dictionary            | Map of all Components ``indexName:instance``             |
| name                                    | Dictionary            | Map of all TemplateEntities``indexName:atlasReference``  |


------------------------------------------------


## Adding new Components
each context for values (like healthpoints or description) is a child of this Class.  

The Childclasses are collected in ``GameSrc/PatnicRoom/Components``.  
Its Classname must be ``C_X_NAME`` where X stands for a free number in the list of enumerated.  
  
The Class also have to be added into the Hashmap of ``GameSrc/PatnicRoom/Indexes/Entity-Attributes/Components.gd``
##
**Here our Template:**  
```
extends Component
class_name C_0_DESCRIPTION

var value: String

func _init(valuePara:String):
    self.name = "C_0_DESCRIPTION"
    value     = valuePara



static func name_quack()        -> String :   return "C_0_DESCRIPTION"
static func dioJSONType_quack() -> String :   return "STRING"


static func getAutoDoc() -> Dictionary: 
    return{
    "suggestion"  : "Something offensive or hyperbolic, best case both",
    "description" : "Is shown to the player in things like mousehover or onlook-action",
    "validInputs" : [],
    "validType"   : dioJSONType_quack(),
    "nameToShow"  : "Description",
}

```
