data(mtcars)
df <- mtcars
df$am <- factor(df$am, levels = c(0, 1), labels = c("Automatic", "Manual"))
logit_model <- glm(am ~ mpg + hp + wt, data = df, family = binomial)
summary(logit_model)
predicted_probs <- predict(logit_model, type = "response")
predicted_class <- ifelse(predicted_probs > 0.5, "Manual", "Automatic")
table(Predicted = predicted_class, Actual = df$am)
df$predicted_prob <- round(predicted_probs, 3)
df$predicted_class <- predicted_class
head(df[, c("mpg", "hp", "wt", "am", "predicted_prob", "predicted_class")])
