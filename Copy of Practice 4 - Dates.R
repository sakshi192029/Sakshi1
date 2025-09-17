# Converts a string to Date format using default ISO format (YYYY-MM-DD).
data_str <- "2025-07-08"
date_obj <- as.Date(data_str)
print(date_obj)


# Converts a string in custom format (DD/MM/YYYY) to a Date object.
data_str <- "08/07/2025"
date_obj <- as.Date(data_str, format = "%d/%m/%Y")
print(date_obj)


# Gets the current system date and formats it as "Month day, Year".
today <- Sys.Date()
formatted <- format(today, "%B %d, %Y")
print(formatted)


# Extracts year, month, and day from a given Date object.
date_val <- as.Date("2005-07-08")
Year <- format(date_val, "%Y")
Month <- format(date_val, "%m")
Date <- format(date_val, "%d")
cat("Year:", Year, "Month:", Month, "Date:", Date)


# Creates a sequence of dates from start to end, one day apart.
Start_Date <- as.Date("2025-07-01")
End_Date <- as.Date("2025-07-08")
date_sq <- seq(Start_Date, End_Date, by = "day")
print(date_sq)

