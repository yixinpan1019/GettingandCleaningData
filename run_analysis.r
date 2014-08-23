library("data.table")
training.features.raw <- readLines("UCI HAR Dataset/train/X_train.txt")
test.features.raw <- readLines("UCI HAR Dataset/test/X_test.txt")

training.labels.raw <- readLines("UCI HAR Dataset/train/y_train.txt")
test.labels.raw <- readLines("UCI HAR Dataset/test/y_test.txt")

training.subjects.raw <- readLines("UCI HAR Dataset/train/subject_train.txt")
test.subjects.raw <- readLines("UCI HAR Dataset/test/subject_test.txt")

split.line <- function(x) as.numeric(substring(x, seq(1,nchar(x),16), seq(16,nchar(x),16)))

features.info <- fread("UCI HAR Dataset/features.txt", header=F)
valid.features <- features.info[grep("MEAN|STD",toupper(V2), perl=T), V1]

variables <- t(apply(as.matrix(c(training.features.raw, test.features.raw)), 1, function(x) split.line(x)[valid.features]))

activity.labels <- fread("UCI HAR Dataset/activity_labels.txt", header=F)
activities <- factor(c(training.labels.raw, test.labels.raw), levels=activity.labels$V1, labels=activity.labels$V2)

subjects <- as.integer(c(training.subjects.raw, test.subjects.raw))

good.data <- data.table(activity = activities, subject = subjects, variables)

tidy.data <- good.data[, lapply(.SD, sum), by=list(activity, subject)]

write.csv(tidy.data, "tidy_data.txt", row.names=F)
