# Library for `Getting and Cleaning Data` course project
#
# Notes:
#   1. Functions starting with `load_` needs disk access and may be slow
#

# Helper to compose filenames like `basePath/[set]/[short]_[set].txt`
fn <- function(short, set) {
    paste0(basePath, set, "/", short, "_", set, ".txt")
}

# Helper to load file and set it's colnames
load_table <- function(short, set, colnames = NULL) {
    if (is.null(colnames)) {colnames <- short}

    tmp <- read.table(fn(short, set))
    colnames(tmp) <- colnames
    tmp
}

# Helper to load "features.txt"
# Strips "(" and ")", and replace "-" with "_" for better readability
load_feature <- function(basePath) {
    f <- read.table(paste0(basePath, "features.txt"))
    f <- sub("\\(\\)", "", f[,2])
    gsub("-", "_", f)
}

# Load all data (both test and train) into an data frame
load_data <- function(basePath) {

    rbind(
        load_set_data(basePath, "test"),
        load_set_data(basePath, "train")
    )
}

# Load data with specified `set` (test|train) into an data frame
#
# Notes:
#   1. Load identity files (subject, y_test)
#   2. match primary output (X) against them
#   3. aggregate data (X) for mean and standard deviation
#
load_set_data <- function(basePath, set) {
    # Load subject_set as primary ID to bootstrap the data.frame
    gigaTbl <- read.table( fn("subject", set), stringsAsFactors = T )

    # Append Set (train | test) into each row as a factor
    gigaTbl <- cbind(gigaTbl, factor(set, levels = c("train", "test")))
    
    # Update colume names of the first 2 columns
    colnames(gigaTbl) <- c("SubjectID", "Set")

    # ? Convert SubjectID to Set (from Int) ?
    # gigaTbl$SubjectID <- factor(gigaTbl$SubjectID)

    # Load Activities
    gigaTbl <- cbind(gigaTbl, load_table("y", set, colnames = "Activity"))

    # Set labels so that it's consistent among datasets
    gigaTbl$Activity <- factor(gigaTbl$Activity, labels = c(
       "Walking",
       "WalkingUpstairs",
       "WalkingDownstairs",
       "Sitting",
       "Standing",
       "Laying"
    ))

    features <- load_feature(basePath)
    X <- load_table("X", set, colnames = features)

    # strip columns without mean or std; 
    # 
    # Note: there are 7 columns with \w+Mean in it. 
    # They are angles between VectorA and some Mean(), thus not means themselves.
    X <- X[,grepl("mean|std", features)]
    gigaTbl <- cbind(gigaTbl, X)

    # As stated in raw data: activity_labels.txt

    gigaTbl
}
