## finalSubmission.R

## Erich S. Huang
## Sage Bionetworks
## erich.huang@sagebase.org

## NOTES
## This is a helper function for making final submissions to the Sage Bionetworks DREAM Breast 
## Cancer Challenge for validation in the OSLO VAL validation cohort

finalSubmission <- function(parentEntity = NULL, trainedModel = NULL, rSourceFile = NULL){
  require(synapseClient)
  parentEntity <- addObject(parentEntity, trainedModel, 'trainedModel')
  parentEntity <- addFile(parentEntity, rSourceFile)
  parentEntity <- storeEntity(parentEntity)
  return(parentEntity)
}

