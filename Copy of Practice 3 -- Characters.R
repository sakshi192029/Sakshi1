# CHARACTERS

# Creating a Text variable with value "Hello R"
Text <- "Hello R"
# Counting number of characters in the Text variable
nchar(Text)


# Converting all characters of string "r language" to uppercase
toupper("r language")
# Converting all characters of string "ZAHID" to lowercase
tolower("ZAHID")


# Creating a Text variable with value "ZAhid"
Text <- "ZAhid"
# Extracting substring from 2nd to 4th character in the Text variable
substr(Text, 2, 4)


# Creating a Text variable with repeated word "apple"
Text <- "apple bannana apple"
# Replacing first occurrence of "apple" with "Mango" in the Text variable
sub("apple", "Mango", Text)
# Replacing all occurrences of "apple" with "Mango" in the Text variable
gsub("apple", "Mango", Text)


# Concatenating strings "R" and "LAnguage" with a space (default separator)
paste("R", "Language")
# Concatenating strings with comma and space as separator
paste("R", "Language", sep = ", ")
# Concatenating strings with single space as separator
paste("R", "Language", sep = " ")
# Concatenating strings without any separator
paste0("R", "Language")
