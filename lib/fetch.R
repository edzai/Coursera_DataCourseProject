# Fetch.R - download & extract raw data files
#
# Library for `Getting and Cleaning Data` course project

# Fetches and extract data from zip and return its base path
download_data <- function() {
    # URL to the source (raw) data zipfile
    REMOTE_URL_ZIP <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

    # Path to downloaded (raw) data zipfile
    LOCAL_FN_ZIP <- "data/data.zip"
    
    # Expected raw data files
    LOCAL_FILES_EXPECTED <- c(
        "data/UCI HAR Dataset/test",
        "data/UCI HAR Dataset/train"
    )

    if (!file.exists("data")) {
        print("Directory `data` not found, creating ...")
        dir.create("data")
    }

    if (!file.exists(LOCAL_FN_ZIP)) {
        print("Data file missing, downloading ...")
        download.file(REMOTE_URL_ZIP, LOCAL_FN_ZIP)
    }

    if (!all(file.exists(LOCAL_FILES_EXPECTED))) {
        print("Extracting ...")
        unzip(LOCAL_FN_ZIP, exdir="data")
    }

    # BasePath to all data files
    "data/UCI HAR Dataset/"
}
