# Creates a factor variable 'Gender' with repeated values "Male" and "Female"
Gender <- factor(c("Male", "Female", "Male", "Female"))
# Prints the factor, then lists its levels and counts the number of unique levels
print(Gender)
levels(Gender)
nlevels(Gender)


# Creates an ordered factor 'Grades' with specified levels in ascending order: C < B < A
Grades <- factor(c("B", "A", "C", "A", "B"), levels = c("C", "B", "A"), ordered = TRUE)
# Prints the factor 'Grades' showing each value with its defined level
print(Grades)
# Compares the first and third grade values based on their order ("B" > "C")
Grades[1] > Grades[3]
Grades[1] # Accesses and prints the first grade ("B")
Grades[3] # Accesses and prints the third grade ("C")
Grades[2] # Accesses and prints the second grade ("A")


# Creates a character vector 'City' containing city names
City <- c("Delhi", "Mumbai", "Delhi", "Kolkata")
# Converts the 'City' vector into a factor and stores it in 'City_factor'
City_factor <- factor(City)
# Displays the unique levels (categories) of the factor 'City_factor'
levels(City_factor)


# Creates a data frame 'Data' with student names, gender (as factor), and ordered grades
Data <- data.frame(
  Name = c("Anam", "Sara", "Ravi"),  # Character vector of names
  Gender = factor(c("Male", "Female", "Male")),  # Factor variable to categorize gender
  Grades = factor(c("A", "B", "A"), levels = c("C", "B", "A"), ordered = TRUE)  # Ordered factor for grades
)
# Displays the entire 'Data' data frame
Data
# Creates a factor variable 'Gender' with the values "Male", "Female", and "Male"
Gender <- factor(c("Male", "Female", "Male"))


# Creates a 3D array with elements 1 to 8 arranged in a 2x2x2 structure
array_data <- array(1:8, dim = c(2, 2, 2))
print(array_data)
# Redefines 'array_data' as a 2D array (matrix) with 2 rows and 4 columns using the same elements
array_data <- array(1:8, dim = c(2, 4))
print(array_data)


# Creates a numeric vector 'V' with 3 elements and prints it
V <- c(1, 2, 3)
V

# Creates a 3x2 matrix 'M' filled with values 1 to 6 by column and prints it
M <- matrix(1:6, nrow = 3)
M
# Reassigns 'M' as a 3x1 matrix with uninitialized (NA) values
M <- matrix(nrow = 3)
M

# Creates a list 'L' with mixed data types: numeric, character, and logical, then prints it
L <- list(1, "a", TRUE)
L
# Creates a nested list 'L2' containing two sub-lists with different values and prints it
L2 <- list(
  A = list(1, "b", FALSE),
  B = list(2, "c", TRUE)
)
L2


# Creates a nested list 'inner_list' with named elements 'a' and 'b'
inner_list <- list(a = 1, b = 2)

# Creates an outer list 'outer_list' with a string element 'name' and a nested list 'data'
outer_list <- list(name = "Sample", data = inner_list)
outer_list


# Creates a list 'L1' with different data types: numeric, character, and logical
L1 <- list(1, "A", TRUE)
# Creates a nested list 'L2' where the first element is a sublist with mixed types, followed by a character and logical value
L2 <- list(list(3, "Trail", FALSE), "a", TRUE)
L2


# Q1. Create a factor called 'Temperature' with 5 categorical values: High, Low, Medium, Low, High.
# Creates an ordered factor 'Temperature' with values High, Low, Medium, Low, High and levels arranged as Low < Medium < High
Temperature <- factor(c("High", "Low", "Medium", "Low", "High"),
                      levels = c("Low", "Medium", "High"),
                      ordered = TRUE)
Temperature


# Q2. Reshape a DataFrame in R from 'Wider to Longer' and then from 'Longer to Wider'.
# The DataFrame is created using the 'tidyr' package, which provides cleaner functions for reshaping data.

install.packages("tidyr")   
library(tidyr)              

# Creates a wide-format data frame with students and their scores in Math and Science.
data_wide <- data.frame(
  Name = c("A", "B"),
  Math = c(90, 85),
  Science = c(95, 75)
)
data_wide

# Converts wide format to long format: reshapes subject columns into key-value pairs.
data_long <- pivot_longer(data_wide, 
                          cols = c(Math, Science), 
                          names_to = "Subject", 
                          values_to = "Score")
data_long

# Manually creates a long-format data frame with Name, Subject, and Score columns.
data_long2 <- data.frame(
  Name = c("A", "B", "A", "B"),
  Subject = c("Math", "Science", "Math", "Science"),
  Score = c(90, 95, 85, 75)
)
data_long2

# Converts long format back to wide format: spreads 'Subject' as column headers.
data_wide2 <- pivot_wider(data_long2, 
                          names_from = Subject, 
                          values_from = Score)
data_wide2