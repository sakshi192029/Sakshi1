data(mtcars)
df <- mtcars
df

model <- lm(mpg ~ hp + wt + cyl, data = df)
summary(model)

par(mfrow = c(2, 2))
plot(model)

new_df <- data.frame(hp = c(120, 150), wt = c(2.8, 3.2), cyl = c(4, 6))
# Photo

step_model <- step(model)
summary(step_model)

plot(df$mpg, model$fitted.values, 
     xlab = )
# Photo

# photo
plot(df$mpg, model2$fitted.values, 
     xlab = "Actual MPG", ylab = "Fitted MPG",
     main = "Actual vs Fitted MPG")
abline(0, 1, col ="red")

