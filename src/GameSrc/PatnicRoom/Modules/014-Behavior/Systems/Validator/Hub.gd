extends Object
class_name _14_Validator



static func validate(actor:ActorEntity, means) -> bool:
    var unorderedValidated : Array

    for i in means.validatorValues.size():
        
        var meanEnum = means.validatorValues.keys()[i]
        var meta     = means.validatorValues[i]["META"]
        var value    = means.validatorValues[i]["VALUE"]
        

        match meta:
            "HAS_NOT_COMP"       : if _14_MeansValidator_HasNotComp(actor,value)        : unorderedValidated.append(meanEnum)
            "HAS_COMP"           : if _14_MeansValidator_HasComp(actor,value)           : unorderedValidated.append(meanEnum)

            "HAS_FLAG"           : if _14_MeansValidator_HasFlag(actor,value)           : unorderedValidated.append(meanEnum)
            
            "IS_SPECIFIC_ENTITY" : if _14_MeansValidator_isSpecificEntity(actor,value)  : unorderedValidated.append(meanEnum)
    

            
var meansByWeight = {}

for entry in unorderedValidated:  
    meansByWeight[entry.weight] = entry


return meansByWeight
            
            























