library(visioneval)
library(filesstrings)

#Test CreateHouseholds.R module
source("R/CreateHouseholds.R")
testModule(
  ModuleName = "CreateHouseholds",
  LoadDatastore = FALSE,
  SaveDatastore = TRUE,
  DoRun = TRUE
)

#Test PredictWorkers module
source("R/PredictWorkers.R")
testModule(
  ModuleName = "PredictWorkers",
  LoadDatastore = TRUE,
  SaveDatastore = TRUE,
  DoRun = TRUE
)

#Test AssignLifeCycle module
source("R/AssignLifeCycle.R")
testModule(
  ModuleName = "AssignLifeCycle",
  LoadDatastore = TRUE,
  SaveDatastore = TRUE,
  DoRun = TRUE
)

#Test PredictIncome module
source("R/PredictIncome.R")
testModule(
  ModuleName = "PredictIncome",
  LoadDatastore = TRUE,
  SaveDatastore = TRUE,
  DoRun = TRUE
)

#Finish up
setwd("tests")
tar("Datastore.tar", "Datastore")
file.copy("Datastore.tar", "../../Test_Data/VE-State/Datastore/Datastore.tar")
file.copy("ModelState.Rda", "../../Test_Data/VE-State/ModelState/ModelState.Rda")
file.copy("Log_CreateHouseholds.txt", "../../Test_Data/VE-State/Log/Log_CreateHouseholds.txt")
file.copy("Log_PredictWorkers.txt", "../../Test_Data/VE-State/Log/Log_PredictWorkers.txt")
file.copy("Log_AssignLifeCycle.txt", "../../Test_Data/VE-State/Log/Log_AssignLifeCycle.txt")
file.copy("Log_PredictIncome.txt", "../../Test_Data/VE-State/Log/Log_PredictIncome.txt")
dir.remove("Datastore")
file.remove(c("Datastore.tar", "ModelState.Rda", "Log_CreateHouseholds.txt",
              "Log_PredictWorkers.txt", "Log_AssignLifeCycle.txt",
              "Log_PredictIncome.txt"))
setwd("..")

