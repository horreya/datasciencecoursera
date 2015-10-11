#README

##Description
This script processes the Human Activity Recognition Using Smartphones Data Set (Anguita et al 2013), producing a tidy dataset containing the mean and standard deviation for each signal, organised by research subject and activity type.

The script combines several files from the original dataset, merging the test and training datasets, and attaching activity, subject, and variable names from their respective files.

The tidy dataset produced is in the wide form, with one variable in each column, and subject/activity observations in the rows.  Duplicate columns have been removed, and all variables are labelled with descriptive names and explained in the codebook (codebook.md)

#Running the script
To run the script, ensure that run_analysis.R is in the same director as the smartphone dataset (available from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip]))

##Reading the output
The tidy dataset produced (SummaryData.txt) can then be read into R with read.table(header=TRUE).  The snippet of code below will read the file from Coursera and display it in R:

address <- "https://s3.amazonaws.com/coursera-uploads/user-3eb2577b0bba314b191e14ea/975115/asst-3/bcec5950497711e588e9117750314cfe.txt"
address <- sub("^https", "http", address)
data <- read.table(url(address), header = TRUE) 
View(data)








