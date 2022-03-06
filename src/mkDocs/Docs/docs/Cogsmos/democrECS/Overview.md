# democrECS

## Introduction
This part of the Framework is responsible to save and declare attributes of game elements.  
  
"democrECS" may ring a bell by some readers, the "ECS" is commonly used for highly modular game elements. In addition, we implemented Templates as flyweight pattern.  
**Here is a short summary of the Structure:**

[**E** ntity](Entity.md):  
`` An Object with Hashmaps of Components, overall composing a game element  ``      
    
[**C** omponent](Component.md):  
``A container for a value, standardiced by its name ``

[**T** emplat](Template.md):  
``A set of components which are commonly shared``
  
[**S** ystem](System.md):  
`` A plugable module of functions which modify, create or delete Entities``
  






<br><br>
## Personal changes to the design

### functioncalls for variable-references
due to readabillity, we choose to append Entities by proxy-like functions.  
    
Every advanced Entity has some lowest common anominator   
(for example every TileEntity has the Component ``C_1_IS_WALKABLE``). 
```
var isWalkable = tileToWalkOn.isWalkable();  
```


