# Run Analysis
#
# Required Steps:
#
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
#

# cleanup everything
remove(list = ls())

# Handles file checks, downloads and extraction
source("lib/fetch.R")

# Loads data, download / extract if needed
basePath <- download_data()

# Load `the black magic` library containing 
source("lib/main.R")

# Load (raw) Data into memory, completes step 1-4 behind the scene
gigaTbl <- load_data(basePath)

library(reshape2)

# Melt & Cast to create means on variables
gigaTbl.melted <- melt(gigaTbl, id.vars = c("SubjectID", "Set", "Activity"))
tidyData <- dcast(gigaTbl.melted, SubjectID + Activity ~ variable, mean)

# remove temporary & raw data to save memory. 
# uncomment the next line if that's an issue
# remove(gigaTbl, gigaTbl.melted)

# Write to "tidyData.txt" and complete step 5
write.table(tidyData, file="tidyData.txt")
