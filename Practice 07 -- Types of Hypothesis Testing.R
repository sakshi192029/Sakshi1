# Proportion Testing

# One-sample proportion test: Tests if 45 out of 100 is significantly different from 50%
prop.test(x = 45, n = 100, p = 0.5)

# Two-sample proportion test: Compares proportions of 30/100 vs 45/120
prop.test(x = c(30, 45), n = c(100, 120))



# Chi-Square Test

# Create a 2x2 contingency table with observed frequencies
data <- matrix(c(15, 25, 35, 25), nrow = 2, byrow = TRUE)
# Set column names (overwritten by mistake — will fix below)
colnames(data) <- c("Smoker", "Non-Smoker")             # [Overwritten in next line]
colnames(data) <- c("Exercise", "Does-Not-Exercise")    # Only this will remain
# Convert matrix to table format
data <- as.table(data)
data

# Perform Chi-Square Test of Independence
result <- chisq.test(data)
# Show test result and p-value
result
result$p.value

# Create grouped bar plot of the contingency table
barplot(data, beside = TRUE, col = c("Skyblue", "Black"),
        legend = TRUE, main = "Smoking Status vs Exercise",
        ylab = "Count", xlab = "Smoking Status")



# Anova Testing

df <- as.data.frame(mtcars)
head(df)

str(df)
summary(df)

dim(df)
colnames(df)

# Also Photo
mtcars$cyl <- as.factor(mtcars$cyl)
oneway <- aov(mpg~cyl, data = mtcars)
summary(oneway)

# Also Photo
df <- as.data.frame(ToothGrowt)
data("ToothGrowt")
str("ToothGrowt")

ToothGrowth$dose <- as.factor(ToothGrowth$dose)

twoway <- anov(len ~ supp * dose, data = ToothGrowt)
summary(twoway)


# Co-relation Test

# Impor dataset
df <- as.data.frame(mtcars)
head(df)
str(df)
summary(df)
dim(df)
colnames(df)

numeric_df <- df[sapply(df, is.numeric)]
cor_matrix_pearson <- cor(numeric_df, method = "pearson")
round(cor_matrix_pearson, 2)

cor.test(numeric_df$mpg, numeric_df$wt, method = "pearson")


# Kruskal wallish Test

# Sir's datasets
# Step 1 : Creating dataset
scores <- c(82,85,88,90,78,80,75,79,92,95,91,94)
groups <- factor(rep(c("Zahid", "Wajid", "Ajit"), each = 4))

# Step 1 : Run the Kruskal-Wallish test
kruskal.test(scores ~ groups)

# By using Irish datasets
data(iris)
head(iris)
kruskal.test(Sepal.Length ~ Species, data = iris)