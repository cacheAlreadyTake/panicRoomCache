````
META
  INDEX         -->  BURNING
  USE           -->  CONDITION
  BY            -->  RedRastaRigger(inhouse)
  DESCRIPTION   vvv

//----------------------------------------------------------------------------//
//----------------------------------------------------------------------------//
//----------------------------------------------------------------------------//

MAIN
//-------\\
  DATA
    COMP
    C_2_TEXTURE_ID  --->  Conditions_0_0
    C_6_NAME        --->  BURNING
//-------\\
  RUN
    EFFECT
    AFFECTING   --->  C_57_HITPOINTS            -->  MOD  ->  -1
    SPREADING   --->  PROPERTY EQUALS BURNABLE  -->  30   ->  1  

//----------------------------------------------------------------------------\\
//----------------------------------------------------------------------------\\
//----------------------------------------------------------------------------\\


REFERENCE
END
````