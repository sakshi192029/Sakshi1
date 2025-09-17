# Installing the 'dplyr' package (only needs to be done once).
# install.packages("dplyr")
# Loading the 'dplyr' package to use data manipulation functions like select, filter, etc.
library(dplyr)


# Creating a data frame named 'Students' with columns for ID, Name, Age, and Score.
# Each column is a vector and together they form a structured table of student data.
Students <- data.frame(
  ID = c(1,2,3,4),
  Name = c("Zahid", "Sara", "Wajid", "Ajit"),
  Age = c(21,19,22,25),
  Score = c(81,76,98,88)
) 
# Selecting only the 'Name' and 'Score' columns from the 'Students' data frame.
# 'select()' is used from the dplyr package to extract specific columns.
select(Students, Name, Score)


# Creating a data frame named 'Details' with columns for ID and City.
# This table links student IDs to their respective cities.
Details <- data.frame(
  ID = c(1,2,5),
  City = c("Delhi", "Mumbai", "Pune")
)
# Selecting the 'ID' and 'City' columns from the 'Details' data frame.
# This displays only the specified columns using the select() function from dplyr.
select(Details, ID, City)


# JOINS
# Performing different types of joins between 'Students' and 'Details' using the common column 'ID':
left_join(Students, Details, by="ID")  # Returns all rows from 'students' and matching rows from 'Details'.
right_join(Students, Details, by="ID") # Returns all rows from 'Details' and matching rows from 'students'.
inner_join(Students, Details, by="ID") # Returns only rows with matching 'ID' in both data frames.
full_join(Students, Details, by="ID")  # Returns all rows from both data frames with matching where available.



# Filtering rows from 'Students' where the 'Score' is greater than 80.
# Returns only students who scored more than 80 marks.
filter(Students, Score>80)


# Sorting the 'Students' data frame in ascending order based on the 'Score' column.
arrange(Students, Score)
# Sorting the 'Students' data frame in descending order based on the 'Score' column.
arrange(Students, desc(Score)) 


# Adding a new column 'Passes' to 'students' that shows TRUE if 'Score' is 80 or more, otherwise FALSE.
mutate(Students, Passes = Score >= 80)


# Calculating the average of the 'Score' column and returning it as 'Avg_Score'.
summarise(Students, Avg_Score = mean(Score))


# Grouping the 'Students' data frame by 'Age' and calculating the average 'Score' for each age group.
Students %>%
  group_by(Age) %>%
  summarise(Average = mean(Score))


# Renaming a column in the 'Students' data frame. For example, renaming 'Score' to 'Marks'.
rename(Students, Marks = Score)
# Renaming the 'Students' data frame to 'School'.
School <- Students


# Returns distinct (unique) rows from the 'Students' data frame, removing any duplicate rows if present.
distinct(Students)


# Filtering students with Score > 80, selecting only Name and Score columns,
# and arranging the result in descending order of Score.
Students %>%
  filter(Score > 80) %>%
  select(Name, Score) %>%
  arrange(desc(Score))


