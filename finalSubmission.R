## finalSubmission.R

## Erich S. Huang
## Sage Bionetworks
## erich.huang@sagebase.org

## NOTES
## This is a helper function for making final submissions to the Sage Bionetworks DREAM Breast 
## Cancer Challenge for validation in the OSLO VAL validation cohort

finalSubmission <- function(originalEntity = NULL, trainedModel = NULL, rSourceFile = NULL){
  require(synapseClient)
  require(sessionTools)
  sessionSummary <- sessionSummary()
  originalEntity <- addObject(originalEntity, sessionSummary, 'sessionSummary')
  originalEntity <- addObject(originalEntity, trainedModel, 'trainedModel')
  originalEntity <- addFile(originalEntity, rSourceFile)
  originalEntity <- storeEntity(originalEntity)
  return(originalEntity)
}

