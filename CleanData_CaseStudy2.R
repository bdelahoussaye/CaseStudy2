###2. Clean your Raw Data
###. a	Read the csv into R and take a look at the data set.Output how many rows and columns the data.frame is.

###Install package to read an Excel file
install.packages("readxl")
library(readxl)

###Read in the attrition data using the read_excel function
attrition <- read_excel("/Users/stevencocke/Downloads/CaseStudy2/CaseStudy2-data.xlsx")

###Check to make sure it is a dataframe
class(attrition)

###Look at the top lines
head(attrition,10)

###Look at the bottom lines
tail(attrition,10)

###Output the number of rows and columns in the data.frame, as well as datatypes
str(attrition)

### b.	The column names are either too much or not enough. Change the column names so that they do not have spaces, 
### underscores, slashes, and the like. All column names should be under 12 characters. 
### Make sure you’re updating your codebook with information on the tidied data set as well.

###Change the column names to be under 12 characters and remove any symbols
colnames(attrition) <- c("Age", "Attrition", "BusTravel", "DailyRate", "Dept", "DistFrHme", "Education", "EducField", "EmplCnt", "EmplNum", "EnvirSatisf", "Gender", "HourlyRate", "JobInvl", "JobLvl", "JobRole", "JobSatisf", "MaritStat", "MonthlyInc", "MonthlyRte", "NumCompWrk", "Over18", "Overtime", "PercSalHike", "PerfRate", "RelatSatisf", "StnrdHrs", "StkOptLvl", "TtlWrkYrs", "TrnTmLstYr", "WrkLfBal", "YrsatComp", "YrsinCurRle", "YrsLstPromo", "YrsCurrMang")

###Verify the column name changes
str(attrition)

