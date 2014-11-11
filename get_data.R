# Load libraries
library(foreign)

# Working directory
getwd()
list.files()
list.files('./data')

setwd('./data')
getwd()
list.files()

setwd('..')
getwd()

my_files <- list.files('./data')
my_files
my_files[1:2]

#Get data: Read .csv files
?read.csv
read.csv('Alabama.csv') 
read.csv('./data/Alabama.csv') 
df <- read.csv('./data/Alabama.csv') # .csv
df <- read.dta('./data/Alabama.dta') # .dta


#Get data: Quick look
head(df) # Get first 6 rows
head(df, 10) # Get first 10 rows
summary(df) # Summary stats
str(df) # Object structure
View(df) # Data frame

#Get data: Indexing
df <- mtcars
df
# Using row / column number
df[1, ] # First row
df[ ,1] # First column
df[1, 1] # Top left cell
df[1:5, ] # First five rows

#Get data: Indexing continued
# Using column names
df[, 'state'] # First column
df[, c('gear', 'cyl')] # First 2 columns
df['Valiant', ] # Also works for rows